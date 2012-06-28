# Setup Express.js:
global.express = require('express')
global.app = app = express.createServer()
require("#{__dirname}/src/configuration")

# Set up a routing for our homepage:
require("#{__dirname}/src/controllers/home_controller.coffee")

# Start server:
app.listen(3000)
console.log("Express server listening on port %d in %s mode", 3000, app.settings.env)
