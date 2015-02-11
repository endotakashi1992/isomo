assert = require("assert")
rest = require('restler')
app = require('../app')

describe "isomo", ->
  before (done)->
    app.listen '3000',->
      done()
  it "server exist",(done)->
    rest.get 'http://localhost:3000/bot/greet'
    .on 'success',->
      done()
  it "bot say Hello", (done)->
    rest.get 'http://localhost:3000/bot/greet'
    .on 'success',(data)->
      assert.equal data,"Hello"
      done()
  it "you say YES!!",(done)->
    rest.get 'http://localhost:3000/bot/say?YES'
    .on 'success',(data)->
      assert.equal data,"Say YES!"
      done()