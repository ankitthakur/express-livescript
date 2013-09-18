module.exports = () ->
	
	class MongooseConfig
		 
		 creds = {
			 'hostname'	: 'localhost',
			 'port' 	: 27017,
			 'username'	: '',
			 'password'	: '',
			 'name' 	: '',
			 'db' 		: 'sampleMongoDB'
		 }

		 mongoURI = (creds) ->
			 if creds['username'] && creds['password']
				 return 'mongodb://' + creds['username'] + ':' + creds['password'] + '@' + creds['hostname'] + ':' + creds['port'] + '/' + creds['db'] 
			 else
				return 'mongodb://' + creds['hostname'] + ':' + creds['port'] + '/' + creds['db']

		 
		 mongoUrl : process.env.MONGODB_URI || mongoURI creds
	

				 
