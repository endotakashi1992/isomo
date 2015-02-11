assert = require("assert")
rest = require('restler')
app = require('../app')
app.listen '3000'

describe "isomo", ->
  it "server exist",(done)->
    rest.get 'http://localhost:3000/bot/greet'
    .on 'success',->
      done()
  it "bot say Hello", (done)->
    rest.get 'http://localhost:3000/bot/greet'
    .on 'success',(data)->
      console.log data
      assert.equal data,"Hello"
      done()