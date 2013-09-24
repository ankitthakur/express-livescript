/*
 * Session Routes
 */

class SessionRoutes
	
	(app) ->
		User = require '../../models/User'
		user = new User
		not_loggedIn = require('./middleware/not_logged_in').notLoggedIn;
		notLoggedIn = new not_loggedIn 
		app.dynamicHelpers {
			session: (req, res) ->
				return req.session
		}
		
		app.get 'session/new', notLoggedIn, (req, res) ->
			res.render 'session/new', {title: "Log in"}
		
		
		app.post '/session', notLoggedIn, (req, res) ->
			if users[req.body.username] && users[req.body.username].password === req.body.password
				req.session.user = users[req.body.username]
				res.redirect 'users'
			else
				res.redirect '/session/new'
		
		
		app.del '/session', (req, res, next) ->
			req.session.destroy 
			req.redirect '/users'
			
		
		
		
