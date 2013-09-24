class Register
	
	setup = (app, express) ->
		
		config = require './config.registerConfig'
		RegisterConfig = config.RegisterConfig
		
		registerConfig = new RegisterConfig app, express
		
		
	
	(app, express) ->
		setup(app, express)
		
		
module.exports = Register