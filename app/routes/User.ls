/* 
User Routes
*/

class User
	
	'use strict'
	
	/* constructor */
	(app) ->
		
		'use strict'
		
		user = require '../models/User'
		userModel = new user
		
		loadUser = require './middleware/load_user' 
		loadUserMiddleWare = new loadUser
		
		console.log userModel
		
		app.get '/users/:name', loadUserMiddleWare, (req, res, next) ->
			res.render 'users/profile', {title: 'User Profile', user: req.user}
			
		
		
