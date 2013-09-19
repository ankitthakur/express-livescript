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
		MongooseConfig = require './mongooseConfig'
		mongooseConfig = new MongooseConfig()
		
		
		### 
		routes config
		### 
		RoutesConfig = require './routesConfig'
		RoutesConfig = new RoutesConfig()
		
		
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
