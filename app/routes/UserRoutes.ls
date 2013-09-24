/* 
User Routes
*/

class UserRoutes
	
	'use strict'
	
	/* constructor */
	(app) ->
		
		'use strict'
		
		UserModel = (require '../models/User').User
		User = new UserModel 
		
		loadUserMiddleWare = require './middleware/load_user'.loadUser 
		loadUser = new loadUserMiddleWare 
		
		
		app.get '/users', (req, res) ->
			res.render 'users/index'
		
		
		
		
		app.get '/users/:name', loadUser, (req, res, next) ->
			res.render 'users/profile', {title: 'User Profile', user: req.user}
			
		
		
