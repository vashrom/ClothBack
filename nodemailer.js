const nodemailer = require("nodemailer");
const transporter = nodemailer.createTransport(
{
    host: 'smtp.gmail.com',
    port: 587,
    secure: false,
    auth: {
        user: 'macaronshopservice@gmail.com',
        pass: 'vatuttobene125'
    }
},
    {
        from: 'Macaron - Все для кондитера <macaronshopservice@gmail.com>',
    }

)

const mailer = message => {
    transporter.sendMail(message, (err, info) => {
        if(err) return console.log(err)
        console.log('Email sent: ', info)
    })
}

module.exports = mailer