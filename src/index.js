require("dotenv").config();

const
    sql = require('mssql'),
    port = process.env.PORT || 3000,
    express = require('express'),
    fs = require("fs"),
    { join } = require("path"),
    app = express(),
    { mw: IP } = require('request-ip'),
    SES = require('express-session');

sql.connect({
    database: process.env.database,
    user: process.env.user,
    server: process.env.server,
    password: process.env.password,
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
}).then(async () => console.log("MSSQL: connected.",



await sql.query`select * from artadoco_admin.APIs`,

await sql.query`select * from artadoco_admin.Products`,
await sql.query`select * from artadoco_admin.Devs`,



));


app.ips = [];

app.set("view engine", "ejs");

app.use(express.static(join(__dirname, "public")),
    express.json(),
    express.urlencoded({ extended: true }),

    IP(),
    SES({
        secret: process.env.SECRET,// store: MS.create({ clientPromise: DB, stringify: false }), 
        resave: false, saveUninitialized: false
    }),

    async (req, res, next) => {
        req.user ||= req.session.userID && await sql.query(`SELECT * FROM artadoco_admin.Devs where ID='${req.session.userID}'`).then(result => result.recordset?.[0] || null);

        const localize = require("./language/" + (req.cookies?.lang || "tr").toLowerCase() + ".json");

        res.reply = (page, options = {}, status = 200) => res.status(status).render(
            join(__dirname, "views", page + ".ejs"), {
            localize, URL: req.path.slice(1),
            ...options
        });


        res.error = (type, error) => res.reply("error", { type, error }, type);

        next();
    }
);

app.get("/", async (req, res) => res.reply("index"));


for (const file of fs.readdirSync(join(__dirname, "routers")))
    app.use("/" + file.replace(".js", ""), require(`./routers/${file}`));


app.all("*", (req, res) => res.error(404, "This page does not exist on this site."));

app.listen(port, () => console.log(`artado devs on port:`, port));