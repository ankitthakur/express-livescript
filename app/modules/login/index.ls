class Login
	
	setup = (app, express) ->
		
		config = require './config.loginConfig'
		LoginConfig = config.LoginConfig
		
		loginConfig = new LoginConfig app, express
		
		
	
	(app, express) ->
		setup(app, express)
		
		
module.exports = Login