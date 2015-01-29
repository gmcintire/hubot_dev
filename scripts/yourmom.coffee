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
#   robotmay

module.exports = (robot) ->

  robot.hear /.*?\b([a-z\-A-Z]+[iI][nN][gG])\b([\w\s]*)/
    target = msg.match[1]
    msg.send "#{msg.message.user.name}: Your mom is #{target}#{msg.match[2]}"
  end

  robot.hear /(?:that|she|he|they|we|this) (?:is|are|was|were) ([\w\s]*)\b?/i, (msg) ->
    adjective = msg.match[1]
    msg.send "#{msg.message.user.name}: Your mom is #{adjective}"
