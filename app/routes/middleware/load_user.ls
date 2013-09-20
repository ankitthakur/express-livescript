/* it defines a piece of middleware used to load users */

class loadUser
	'use strict'
	
	/* constructor */
	(req, res, next) ->

		'use strict'
		User = require '../../models/User'
		user = new User
		
		/* 
		
		findOne method provided in the user model object.
		
		=========
		The first argument to it is the query parameters, 
		which in this case is an exact match with 
		the name request parameter
		
		=========
		
		The second argument is a callback function 
		that is invoked when there is an error or 
		the find operation has terminated. 
		
		If there is an error, it is forwarded to the next callback.
		
		If no such user is found in the user collection, 
		you reply with a 404 Not Found status code and 
		stop execution.
		*/
		user.findOne {username: req.params.name},
		(err, user) ->
			if err
				return next err
			
			return res.send 'Not Found', 404 unless user
			
			req.user = user;
			next()
			
		
		return

module.exports = loadUser
