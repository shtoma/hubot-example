# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ぴん - Reply with ぽん
#   hubot 今何時 - Reply with current time
#   hubot ばいばい - End hubot process

meMembers= [
  "Yuzo Konishi",
  "Yuta Sudo",
  "Yasuaki Shirogane",
  "Tomohiro Kamitani",
  "Takashi Shirota",
  "Takao Fukuoka",
  "Seiji Okuno",
  "Masumi Inoue",
  "Keiko Saito",
  "Keigo Nakamura",
  "Kazutoshi Kinoshita",
  "Kazuto Kikui",
  "Eiji Fukuda",
  "Ayu Nakaoka",
  "Shingo Toma"
]
util = require 'util'


module.exports = (robot) ->
  robot.respond /ME members$|MEの人たち$/i, (msg) ->
    msg.send util.inspect meMembers

  robot.respond /someone$|誰か$|だれか$/i, (msg) ->
    msg.send randomChoosedMember(meMembers)

  robot.respond /member to share news$|今日の.*.メンバー$/i, (msg) ->
    msg.send randomChooseUniqMember(meMembers)

  robot.respond /members in these days$|最近のメンバー$/i, (msg) ->
    msg.send util.inspect robot.brain.data



randomChooseUniqMember = (members) ->
  #unless robot.brain.data.membersTheseDays
  robot.brain.data.membersTheseDays = ''
  #robot.brain.save
  
  memberToAssign = randomChoosedMember(members)
  #while memberToAssign in robot.brain.data.membersTheseDays
  #  memberToAssign = randomChoosedMember(members)
  robot.brain.data.membersTheseDays += memberToAssign 
  robot.brain.save
  memberToAssign 

randomChoosedMember = (members) ->
  shuffle(members)[0]

shuffle = (a) ->
  # From the end of the list to the beginning, pick element `i`.
  for i in [a.length-1..1]
    # Choose random element `j` to the front of `i` to swap with.
    j = Math.floor Math.random() * (i + 1)
    # Swap `j` with `i`, using destructured assignment
    [a[i], a[j]] = [a[j], a[i]]
  # Return the shuffled array.
  a
  
formatDate = (date) ->
  year = date.getFullYear()
  month = forceTwoDigits(date.getMonth()+1)
  day = forceTwoDigits(date.getDate())
  "#{year}#{month}#{day}"