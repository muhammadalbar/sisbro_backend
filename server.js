var app = require('./app')
var http = require('http')

const PORT = process.env.PORT || 8000
const HOST = process.env.HOST || '0.0.0.0'

var server = http.createServer(app)
server.listen(PORT,HOST, () => console.log(`Server started on port: ${PORT}`))
