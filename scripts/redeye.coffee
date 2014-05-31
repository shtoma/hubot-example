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
#   redeye - Display a redeye image
#
# Author:
#   atmos

images = [
  "http://redeyelovers.files.wordpress.com/2013/03/url-1.jpeg?w=300&h=225",
  "http://blog.yume-iro.net/public/image/sin/200807/ALCG000B.jpg"
]

module.exports = (robot) ->
  robot.hear /redeye/i, (msg) ->
    msg.send msg.random images
