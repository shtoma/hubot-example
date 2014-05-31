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
#  hubot apologize - Display a super apologizer image
#
# Author:
#  shtoma 

images = [
  "http://hubot-api.herokuapp.com/imgs/apologize.gif"
]

module.exports = (robot) ->
  robot.hear /apologize/i, (msg) ->
    msg.send msg.random images
