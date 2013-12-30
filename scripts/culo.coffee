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
  "http://davidnez.files.wordpress.com/2013/02/culo.jpg?w=300&h=187",
  "http://thedanzatap.com/wp-content/uploads/2012/08/culo-shot-300x250.jpg",
  "http://images.freshnessmag.com/wp-content/uploads/2013/11/parra-x-case-studyo-vaso-di-culo-porcelain-vase-06-570x379.jpg",
  "http://thetangential.com/wp-content/uploads/2012/03/bart-simpson-culo-350x514.jpg",
  "http://p.twpl.jp/show/orig/dMOPA",
  "https://p.twimg.com/AtO12YGCAAEDn_6.jpg"
]

module.exports = (robot) ->
  robot.hear /culo/i, (msg) ->
    msg.send msg.random images
