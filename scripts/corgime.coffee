# Description:
#   Corgime
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
# corgi me - Receive a corgi
# corgi bomb N - get N corgis
#
# Author:
#   alexgodin

module.exports = (robot) ->

  robot.respond /corgi me/i, (msg) ->
    msg.http("http://corginator.herokuapp.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).corgi

  robot.respond /corgi bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    msg.http("http://corginator.herokuapp.com/bomb?count=" + count)
      .get() (err, res, body) ->
        msg.send corgi for corgi in JSON.parse(body).corgis
