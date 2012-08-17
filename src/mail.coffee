fs = require 'fs'
nodemailer = require 'nodemailer'

config = JSON.parse fs.readFileSync __dirname + '/../config.json'

smtpTransport = nodemailer.createTransport "SMTP", config.smtp

mailOptions = config.message

exports.send = (email) ->
    mailOptions.to = "<#{email}>" # See http://stackoverflow.com/a/4421947
    smtpTransport.sendMail mailOptions, (err, res) ->
        if err
            console.log 'Error:', err
        else
            console.log 'Message sent:', res

