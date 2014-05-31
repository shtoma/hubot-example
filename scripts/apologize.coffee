# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   like an adult - Display a hyperbole and a half image
#
# Author:
#   atmos

images = [
  "http://hubot-api.herokuapp.com/imgs/apologize.gif"
]

module.exports = (robot) ->
  robot.hear /redeye/i, (msg) ->
    msg.send msg.random images
