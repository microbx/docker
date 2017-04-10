

const Hapi = require('hapi')

require('dotenv').config({ silent: true })

const server = new Hapi.Server()

// server.connection({ port: process.env.WEB_PORT || 3000, host: process.env.WEB_HOST || 'localhost' })
server.connection({ port: 3000, host: 'localhost' })

server.route({

    method: 'GET',

    path: '/',

    handler: function (request, reply) {
        reply('Hello!')
    }

})

server.start((err) => {

    if (err) {
        throw err
    }

    console.log(`Server running at: ${server.info.uri}`)

})
