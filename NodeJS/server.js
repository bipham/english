var app = require('express')();
var server = require('http').Server(app);
var io = require('socket.io')(server);
var redis = require('redis');

server.listen(8890);
console.log('Server running port: 8890 ...');
current_sockets = {};
io.on('connection', function (socket) {
    console.log("new client connected: " + socket.id);
    var redisClient = redis.createClient();
    redisClient.subscribe('message');
    redisClient.subscribe('notification');
    redisClient.on("message", function(channel, data) {
        console.log("new message", channel, data);
        if (channel == 'notification') {
            console.log("new matchNotification", channel, data);
        }
    });

    socket.on('updateSocket', function (data) {
        current_sockets['user-' + data] = socket.id;
        console.log('socket all: ' + JSON.stringify(current_sockets));
        var socketID = current_sockets['user-' + data];
        console.log('update socket ....: ' + socketID);
    });

    socket.on('disconnect', function() {
        var key = null;
        for (var k in current_sockets){
            if (current_sockets[k] === socket.id){
                key = k;
                break;
            }
        }
        if (key != null)
            delete current_sockets[key];
        console.log('socket dis: ' + JSON.stringify(current_sockets));
        redisClient.quit();
    });

});