class Conf
	
	setup = (app, express) ->
		
		### 
		express config
		### 
		ExpressConfig= require './expressConfig'
		expressConfig= new ExpressConfig(app, express)
		
		
		### 
		mongoose config
		### 
		mongooseConf = require './mongooseConfig'
		_mongoose = mongooseConf.mongoose
		
		
		### 
		routes config
		### 
		routesConf = require './routesConfig'
		_routes = routesConf.mongoose
		
		
		### 
		error config
		### 
		ErrorsConfig = require './errorConfig'.ErrorConf
		errorsConfig = new ErrorsConfig(app)
		### 
		### 
	
	constructor: (app, express) ->
		setup(appm express)
	

module.exports = Conf		 
