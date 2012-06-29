# Setup Express.js:
global.express = require('express')
global.app = app = express.createServer()
require("#{__dirname}/src/configuration")

# Set up the Database:
require("#{__dirname}/src/models/database")
require("#{__dirname}/src/models/todo")

# Set up a routing for our homepage:
require("#{__dirname}/src/controllers/home_controller")

# Set up routing for todo api
require("#{__dirname}/src/controllers/todos_controller")



# Start server:
app.listen(3000)
console.log("Express server listening on port %d in %s mode", 3000, app.settings.env)
