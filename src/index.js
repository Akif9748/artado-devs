const path = require("path");

require("dotenv").config();
const
    //   { def_theme, forum_name, description, limits, global_ratelimit: RLS, discord_auth, host } = require("../config.json"),
    port = process.env.PORT || 3000,
    express = require('express'),
    fs = require("fs"),
    { join } = require("path"),
    app = express(),
    { mw: IP } = require('request-ip'),
    SES = require('express-session');

app.ips = [];

app.set("view engine", "ejs");

app.use(express.static(join(__dirname, "public")),
    express.json(),
    express.urlencoded({ extended: true }),

    IP(),
    SES({
        secret: "process.env.SECRET",// store: MS.create({ clientPromise: DB, stringify: false }), 
        resave: false, saveUninitialized: false
    }),

    async (req, res, next) => {

        //  req.user = req.session.userID ? await UserModel.findOneAndUpdate({ id: req.session.userID }, {
        //      lastSeen: Date.now(), $addToSet: { ips: req.clientIp }
        // }) : null;

        const localize = require("./language/" + (req.cookies?.lang || "tr").toLowerCase() + ".json");
            
        res.reply = (page, options = {}, status = 200) => res.status(status).render(
                path.join(__dirname, "views", page + ".ejs"), {
                localize,
                ...options
            });


        res.error = (type, error) => res.reply("error", { type, error }, type);
        /*
                if (req.user?.deleted) {
                    req.session.destroy();
                    return res.error(403, "Your account has been deleted.");
                }
        */
        next();
    }
);


for (const file of fs.readdirSync(join(__dirname, "routes")))
    app.use("/" + file.replace(".js", ""), require(`./routes/${file}`));

app.all("*", (req, res) => res.error(404, "This page does not exist on this forum."));

app.listen(port, () => console.log(`artado devs on port:`, port));