class RegisterConfig
	
	setup = (app, express) ->
		
		cons = require 'consolidate'
		swig = require 'swig'
		path = require 'path'
		
		VIEWS_DIR = path.join __dirname, 'views'
		
		
		swig.init {root: VIEWS_DIR, allowErrors:true}
		
		app.engine 'html', cons.swig
		
	    /* 
		 Swig will cache templates for you, but you can disable
	     that and use Express's caching instead, if you like:
		*/
		app.set 'view cache', false
		
		/* 
		MIDDLEWARES
		*/
		
		/* 
		1. compress : Compress response data with gzip / deflate. 
		This middleware should be placed "high" within the stack to ensure all responses may be compressed.
		*/
		app.use express.compress()
		
		/* 
		2. body parser : it is simply a wrapper the json() and urlencoded().
		
		for security purpose, leave out multipart() all together. 
		Use `if (req.is('multipart/form-data')` and formidable/multiparty/parted directly.
		*/
		app.use express.json()
		app.use express.urlencoded()
		
		/* 
		3. methodOverride allows us to make pseudo DELETE and PUT requests from browser forms using a hidden input element called _method
		*/
		app.use express.methodOverride()
		
		
		/* 
		4. directories : directories to serve files.
		*/
		app.use express.directory('public')
		app.use express.directory('static')
		app.use express.directory('images')
		app.use express.directory('media')

	
	(app, express) ->
		setup(app, express)
		
		
module.exports = RegisterConfig;