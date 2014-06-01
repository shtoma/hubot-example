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
#  hubot 
#
# Author:
#   atmos
util = require 'util'

module.exports = (robot) ->
  robot.hear /おっぱい/i, (msg) ->
    robot.emit "imageMeSimple", {msg: msg, query: "おっぱい"}