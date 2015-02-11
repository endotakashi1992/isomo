express = require('express')
app = express()

objects = {}

app.get '/bot/greet',(req,res)->
  res.json "Hello"

# app.all '/:object/:method',(req,res)->
#   object = req.params.object
#   method = req.params.method
#   objects[object].call method ,(e,data)->
#     res.json data

module.exports = app

