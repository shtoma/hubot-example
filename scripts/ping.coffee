# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
# ping - Reply with pong
# echo <text> - Reply back with <text>
# time - Reply with current time
# die - End hubot process

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONGPONGPONG"

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"

  robot.respond /DIE$/i, (msg) ->
    msg.send "you can't kill me."
    #process.exit 0

  robot.respond /what website do you like¥?/i, (msg) ->
    msg.send "http://www.infoseek.co.jp"
    #process.exit 0

