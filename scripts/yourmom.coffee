# Description:
#   Your mom
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   gmcintire

module.exports = (robot) ->
  robot.hear /.*?\b([a-z\-A-Z]+[iI][nN][gG])\b([\w\s]*)/i, (msg) ->
    target = msg.match[1]
    if Math.floor(Math.random() * 20) == 1
      msg.send "#{msg.message.user.name}: Your mom is #{target}#{msg.match[2]}"

  robot.hear /(?:that|she|he|they|we|this) (?:is|are|was|were) ([\w\s]*)/i, (msg) ->
    adjective = msg.match[1]
    if Math.floor(Math.random() * 20) == 1
      msg.send "#{msg.message.user.name}: Your mom is #{adjective}"
