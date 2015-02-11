express = require('express')
app = express()

objects = {}

objects.bot = 
  greet:(cb)->
    cb(null,"Hello")
  say:(word,cb)->
    cb null,"Say #{word}!"

app.all '/:object/:method',(req,res)->
  object = objects[req.params.object]
  method = req.params.method
  object[method] (e,data)->
    res.json e || data

module.exports = app