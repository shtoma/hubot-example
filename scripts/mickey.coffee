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
#  hubot おっぱい - 疲れたときにどうぞ
#
# Author:
#   atmos
util = require 'util'

module.exports = (robot) ->
  robot.hear /社長/i, (msg) ->
    robot.emit "imageMeSimple", {msg: msg, query: "三木谷浩史"}