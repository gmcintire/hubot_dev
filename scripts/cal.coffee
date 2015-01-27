1 child_process = require('child_process')
2 module.exports = (robot) ->
3   robot.respond /calendar( me)?/i, (msg) ->
4     child_process.exec 'cal -h', (error, stdout, stderr) ->
5       msg.send(stdout)
