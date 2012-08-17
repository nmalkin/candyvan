express = require 'express'
mail = require './mail'

app = express()
app.use express.logger()
app.use express.bodyParser()
app.use express.static __dirname + '/../static'

app.post '/', (req, res) ->
    if req.body.email? and req.body.email != ''
        mail.send req.body.email
        res.redirect '/done.html'
    else
        res.redirect '/'

app.listen process.env.PORT || 8254
