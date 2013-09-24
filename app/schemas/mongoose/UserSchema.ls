class UserSchema
	'user strict'
	
	/* constructor */
	->
		'user strict'
		mongoose = require 'mongoose'
		return new mongoose.Schema {
			username:String,
			name:String,
			password:String
			
		}
		
module.exports = UserSchema