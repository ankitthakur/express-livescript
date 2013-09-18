module.exports = () ->
	# create MongooseConfig 
	class db.MongooseDB 
		
		@mongoose:  ->
			mongoose = require 'mongoose'
			mongoose.connection.on 'error', console.error.bind console, 'connection error:' 
			mongoose.connection.once 'open',  ->
				console.log 'mongodb connection is opened.' 
			return mongoose
		
		@mongoDbUrl:  ->
			 config = require '../config/mongooseConfig' 
			 return config.mongoUrl
		 
		
		 @db: ->
			 if @mongoose.connection.readyState == 0 
				 return @mongoose.connect(mongourl)
		 
		 
		