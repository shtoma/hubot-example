# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
# ぴん - Reply with ぽん
# 今何時 - Reply with current time
# ばいばい - End process

module.exports = (robot) ->
  robot.respond /ぴんぐ?$/i, (msg) ->
    msg.send "ぽんぽん"

  robot.respond /今何時/i, (msg) ->
    msg.send "こっちのサーバ時間では: #{new Date()}です。"

  robot.respond /ばいばい|帰れ|去ね|去れ|消えろ|どっかいけ/i, (msg) ->
    msg.send "(　；∀；) ｶﾅｼｲﾅｰ"

