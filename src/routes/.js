
const { Router } = require("express");
const app = Router();

app.get("/", async (req, res) => res.reply("index"));

module.exports = app;