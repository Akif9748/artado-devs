
const { Router } = require("express");
const app = Router();
const sql = require('mssql');
const transporter = require("../lib");
const SecurityHelper = require("../functions/secure");



app.get("/", async (req, res) => {

    return res.reply("submit", {
        mode: "register"
    });

});

app.post("/confirm", async (req, res) => {
    const { code } = req.body;
    if (!code || code != req.session.registerCode)
        return res.error(
            400,
            "Kod yanlış")


    const { Username, Mail, Password, Bio, Site } = req.session.tempUserInfo;
    const salt = SecurityHelper.generateSalt(70);
    const pwdHashed = SecurityHelper.hashPassword(Password, salt, 10101, 70);

    const URL = Username.replaceAll(" ", "_");
// get a random number between 1000 and 99999999
    const random = Math.floor(Math.random() * (99999999 - 1000 + 1) + 1000);

   const write= await new sql.Request()
    .input('Name', sql.VarChar, Username)
    .input('Password', sql.VarChar, pwdHashed)
    .input("Mail", sql.VarChar, Mail)
    .input("Description", sql.VarChar, Bio)
    .input("URL", sql.VarChar, URL)
    .input("WebSite", sql.VarChar, Site)
    .input("Logo", sql.VarChar, "image.png")
    .input("PassID", sql.VarChar, String(random ))
    .input("Salt", sql.VarChar, salt)
    .input("Validation", sql.VarChar, "true")
    .query(
        `insert into artadoco_admin.Devs(Name, Password, Mail, Description, URL, WebSite, Logo, PassID, Salt, Validation) values (@Name, @Password, @Mail, @Description, @URL, @WebSite, @Logo, @PassID, @Salt, @Validation)`
    )

    console.log(write)
    res.redirect("/panel");






})

app.post("/", async (req, res) => {
    const { Username, Mail, Password, Bio, Site } = req.body;
    if (!Username || !Mail || !Password) {
        return res.error(
            400,
            "Lütfen tüm alanların dolu olduğundan emin olun.")
    }


    const reading = await sql.query(
        `select * from artadoco_admin.Devs where Name='${Username}' or Mail='${Mail}'`
    )


    if (reading.recordset.length)
        return res.error(400, "Bu kullanıcı adı veya e-posta adresi alınmış.")


    const registerCode = 100000 + Math.floor(Math.random() * 900000);
    req.session.registerCode = registerCode;

    
    try {
        const info = await transporter.sendMail({
            from: '"Artado" <support@artadosearch.com>', // sender address
            to: Mail, // list of receivers
            subject: "Confirm Your Account - Artado Developers", // Subject line
            text: `${registerCode}`,
            html: "<td style=\"text-align:center\"><h5>Your Artado Developers confirmation code:</h5><h4>" + registerCode + "</h4></td>"
        });
        console.log(info);
        req.session.tempUserInfo = { Username, Mail, Password, Bio, Site };




///////////////////////////////////////////////////////////////////////////////////////

        const salt = SecurityHelper.generateSalt(70);
        const pwdHashed = SecurityHelper.hashPassword(Password, salt, 10101, 70);
    
        const URL = Username.replaceAll(" ", "_");


       const write= await new sql.Request()
        .input('Name', sql.VarChar, Username)
        .input('Password', sql.VarChar, pwdHashed)
        .input("Mail", sql.VarChar, Mail)
        .input("Description", sql.VarChar, Bio)
        .input("URL", sql.VarChar, URL)
        .input("WebSite", sql.VarChar, Site)
        .input("Logo", sql.VarChar, "image.png")
        .input("PassID", sql.VarChar, "0")
        .input("Salt", sql.VarChar, salt)
        .input("Validation", sql.VarChar, "true")
        .query(
            `insert into artadoco_admin.Devs(Name, Password, Mail, Description, URL, WebSite, Logo, PassID, Salt, Validation) values (@Name, @Password, @Mail, @Description, @URL, @WebSite, @Logo, @PassID, @Salt, @Validation)`
        )
    

        console.log(write)
      return  res.redirect("/panel");
    




/////////////////////////////////////////////////////////////////////////////////








        
        res.reply("submit", {
            mode: "mail",                   login:false


        });

    }
    catch (err) {
        console.log(err)
        res.error(500, "Onay kodu gönderilirken bir sıkıntı oluştu. E-posta adresinizi kontrol edip lütfen tekrar deneyiniz."
            + "\n" + err)
    }


})

module.exports = app;