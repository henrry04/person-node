var http = require('http');
var server = http.createServer(function(pet, result) {
    console.log("Server OK1");
    result.end()
})
server.listen(3001);
console.log('Escuchando puerto 3001');