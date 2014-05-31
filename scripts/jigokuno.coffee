# Description:
#   None
#
# Dependencies:
#   "htmlparser": "1.7.6"
#   "soupselect": "0.2.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot jigokuno - Returns a random jigokuno image
#
# Author:
#   EnriqueVidal 

Select      = require( "soupselect" ).select
HTMLParser  = require "htmlparser"

module.exports = (robot)->
  robot.respond /jigokuno( me)?/i, (message)->
    send_jigokuno message, false, (text)->
      message.send text

send_jigokuno = (message, location, response_handler)->
  jigokuno_domain = "http://jigokuno.com"
  location  ||= "/?page=" + Math.floor(Math.random() * 250)
  if location.substr(0, 4) != "http"
    url = jigokuno_domain + location
  else
    url = location

  message.http( url ).get() (error, response, body)->
    return response_handler "Sorry, something went wrong" if error

    if response.statusCode == 302
      location = response.headers['location']
      return send_jigokuno( message, location, response_handler )

    img_src = get_jigokuno_image( body, ".pict" )

    if img_src.substr(0, 4) != "http"
      img_src = "http:#{img_src}"

    response_handler img_src

get_jigokuno_image = (body, selector)->
  html_handler  = new HTMLParser.DefaultHandler((()->), ignoreWhitespace: true )
  html_parser   = new HTMLParser.Parser html_handler

  html_parser.parseComplete body
  Select( html_handler.dom, selector )[0].attribs.src
