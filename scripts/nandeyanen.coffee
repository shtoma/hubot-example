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
#  hubot ネタフリしてみてください
#
# Author:
#   atmos
util = require 'util'

module.exports = (robot) ->
  #TODO ツッコミを求められていることを察するロジック
  robot.hear /髪きった¥?/i, (msg) ->
    robot.emit "imageMeSimple", {msg: msg, query: "なんでやねん"}

  #TODO ハリセンボン風のツッコミを求められていることを察するロジック
  #参考  http://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q1082090530
  robot.hear /角野卓造|幸楽は忙しいです[か|ね]/i, (msg) ->
    msg.send "http://blog.so-net.ne.jp/_images/blog/_8aa/rahmens-kingshow/EFBC91-75f23.JPG"

  robot.hear /シュレック|緑色じゃないんです[か|ね]/i, (msg) ->
    msg.send "http://surf-good.boy.jp/s-harunalasik.jpg"

  robot.hear /マイケルムーア|映画の撮影.*です[か|ね]/i, (msg) ->
    msg.send "http://blog.so-net.ne.jp/_images/blog/_8aa/rahmens-kingshow/11-82bb4.JPG"

  #TODO 三村風ツッコミを求められていることを察するロジック
  #参考 http://blogs.yahoo.co.jp/fragilehandle/17840100.html
  #    http://www.geocities.co.jp/Playtown-Dice/6902/mimura.html