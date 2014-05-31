# Description:
#   Event system related utilities
#
# Commands:
#   hubot fake event <event> - Triggers the <event> event for debugging reasons
#
# Events:
#   hubot debug - {user: <user object to send message to>}

util = require 'util'

module.exports = (robot) ->

  robot.respond /FAKE EVENT (.*)/i, (msg) ->
    msg.send "fake event '#{msg.match[1]}' triggered"
    robot.emit msg.match[1], {user: msg.message.user}

  robot.on 'debug', (event) ->
    robot.send event.user, util.inspect event

  robot.on "imageMeSimple", (event) ->
    queryString = event.query
    q = v: '1.0', rsz: '8', q: queryString 
    event.msg.http('http://ajax.googleapis.com/ajax/services/search/images')
      .query(q)
      .get() (err, res, body) ->
        images = JSON.parse(body)
        images = images.responseData?.results
        if images?.length > 0
          image  = event.msg.random images
          event.msg.send "#{queryString} #{image.unescapedUrl}#.png"