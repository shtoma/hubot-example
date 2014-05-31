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
  #TODO ツッコミを求められていることを察するロジック
  robot.hear /髪きった¥?/i, (msg) ->
    robot.emit "imageMeSimple", {msg: msg, query: "なんでやねん"}