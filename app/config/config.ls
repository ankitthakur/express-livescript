class Conf
	
	setup = (app, express) ->
		
		/* express config */
		
		ExpressConfig = require './expressConfig'
		expressConfig = new ExpressConfig(app, express)
		
		/* mongoose config */
		MongooseConfig = require './mongooseConfig'
		mongooseConfig = new MongooseConfig()
		
		/* routes config */
		RoutesConfig = require './routesConfig'
		routesConfig = new RoutesConfig()
		
		/* error config */
		ErrorsConfig = require './errorConfig'
		errorConfig = new ExpressConfig(app, express)
		
	
	(app, exoress) ->
		setup(app, express)

modules.export = Conf
	
	