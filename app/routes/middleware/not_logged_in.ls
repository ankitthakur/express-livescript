/* if we want to restrict access to the 
	GET /users/new, 
	POST /users, 
	GET /sessions/new, and 
	POST /session 
   to users who are not logged in, 
   we can create the following generic route middleware */

class notLoggedIn
	'use strict'
	
	/* constructor */
	(req, res, next) ->

		'use strict'
		if req.session.user
			res.send 'Unauthorized', 401
		else
			next()
		

module.exports = notLoggedIn
