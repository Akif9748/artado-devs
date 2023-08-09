
const { Router } = require("express");
const app = Router();

app.get("/", async (req, res) => {

 
    if (req.query.mode==="login")
    res.reply("submit", {
     
    });
    else {
        res.reply("submit", {
     
    });
    }

});

module.exports = app;