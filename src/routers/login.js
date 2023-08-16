
const { Router } = require("express");
const app = Router();
const sql = require('mssql');
const transporter = require("../lib");

const SecurityHelper = require("../functions/secure");

app.get("/", async (req, res) => {

    return res.reply("submit", {
        mode: "login"
    });

});

app.post("/confirm", async (req, res) => {
    const { code } = req.body;
    if (!code || code != req.session.loginCode)
        return res.error(
            400,
            "Kod yanlış")
    const read = await sql.query(
        `SELECT ID FROM artadoco_admin.Devs where Mail='${req.session?.tempUserInfo?.Mail}'`)
    req.session.userID = read.recordset[0].ID;

    console.log(read)
    res.redirect("/panel");

})

app.post("/", async (req, res) => {
    const { Mail, Password } = req.body;
    if (!Mail || !Password) {

        return res.error(
            400,
            "Lütfen tüm alanların dolu olduğundan emin olun.")
    }


    const reading = await sql.query(`SELECT Salt, Password, ID from artadoco_admin.Devs where Mail='${Mail}'`)

    if (!reading.recordset.length) {
        return res.error(400,
            "E posta sistemde yok.")
    }

   const pwdHashed = SecurityHelper.hashPassword(Password, reading.recordset[0].Salt, 10101, 70);

    if (reading.recordset[0].Password !== pwdHashed)
         return res.error(401, 'Incorrect password!');

    const loginCode = 100000 + Math.floor(Math.random() * 900000);
    req.session.loginCode = loginCode;

    const ip = req.clientIp;
    const browser = req.headers['user-agent'];
    try {
        const info = await transporter.sendMail({
            from: '"Artado" <support@artadosearch.com>', // sender address
            to: Mail, // list of receivers
            subject: "Your Account Has Been Logged In - Artado Developers", // Subject line
      //      text: `${loginCode}`,
            html: "<td style=\"text-align:center\"><h5>Your Artado Developers Account was logged in from:</h5><h4>" + "Browser: " + browser + "<br/> IP Address: " + ip + "<br/> <h5>Please use this code to confirm that you are the one logged in:</h5><h4>" + loginCode + "</h4> <h6>If you're not the one who logged in, change your password.</h6> </td>"


        });
        console.log(loginCode );
        req.session.tempUserInfo = { Mail };

        res.reply("submit", {
            mode: "mail",
           login:true
        });

    }
    catch (err) {
        console.log(err)
        res.error(500, "Onay kodu gönderilirken bir sıkıntı oluştu. E-posta adresinizi kontrol edip lütfen tekrar deneyiniz."
            + "\n" + err)
    }

})

module.exports = app;