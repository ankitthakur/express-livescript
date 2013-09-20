/* a model that will map into the user collection in the db. */

class User
	'use strict'
	
	/* constructor */
	->
		'user strict'
		mongoose = require 'mongoose'
		UserSchema = require '../schemas/user'
		mongoose.model 'User', UserSchema

module.exports = User
