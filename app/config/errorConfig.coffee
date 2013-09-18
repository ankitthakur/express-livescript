#module.coffee
class ErrorsConfig
	
	setup = (app) ->
		### 
		Error Handling Middleware :
		
		Error-handling middleware are defined just like regular middleware,
		however must be defined with an arity of 4, that is the signature (err, req, res, next)
		
		###
		
		### 
		1. log errors
		###
		logErrors : (err, req, res, next) ->
			console.error err.stack
			next err
		
		### 
		2. all errors
		###
		allErrors : (err, req, res, next) ->
			res.status 500
			res.render 'error', {error:err}
			
		app.use logErrors
		app.use allErrors
		
		return
		
	constructor: (app) ->
  	  setup(app)

module.exports = ErrorsConfig
		 
		 
	

				 
