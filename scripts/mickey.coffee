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
#  hubot 社長
#
# Author:
#   atmos
util = require 'util'

module.exports = (robot) ->
  robot.hear /mickey|ミッキー|社長/i, (msg) ->
    robot.emit "imageMeSimple", {msg: msg, query: "三木谷浩史"}