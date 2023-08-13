const transporter = require("../lib");
module.exports = function sendEmail(register, mail, browser, ip, code) {


    const mailOptions = {
        from: '"Artado" <support@artadosearch.com>',
        to: mail,
        subject: register ? 'Confirm Your Account - Artado Developers' : 'Your Account Has Been Logged In - Artado Developers',
        html: `
            <html>
            <body>
                <table style="text-align:center">
                    <tr>
                        <td>
                            <h5>${register ? 'Your Artado MyAccount confirmation code:' : 'Your Artado Developers Account was logged in from:'}</h5>
                            <h4>${code}</h4>
                            ${!register ? `<h5>Browser: ${browser}<br/> IP Address: ${ip}</h5><h4>Please use this code to confirm that you are the one logged in:</h4>` : ''}
                            ${!register ? `<h6>If you're not the one who logged in, change your password.</h6>` : ''}
                        </td>
                    </tr>
                </table>
            </body>
            </html>`
    };


   return transporter.sendMail(mailOptions);

}

