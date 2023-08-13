const nodemailer = require("nodemailer");

const transporter = nodemailer.createTransport({
  host: "mail.artadosearch.com",
  port: 465,
  secure: true,
  auth: {
    user: process.env.mail_user,
    serviceClient: "artadosearch",
    pass: process.env.mail_pass,
  }
});

module.exports = transporter;