class RegisterRoutes
	
	setup = (app, express) ->
		
		app.get('/login', function(req, res){
			console.log(res.render('index',{"login":"login","submit":"Login","cancel":"Forgot Password"}));
			console.log(req.params);
			console.log(req.body);
			res.render('index');
		});

		app.post('/login', function(req, res) {
			console.log(req);
			console.log(req.body);
			res.send(req.params);
		});
	
	(app, express) ->
		setup(app, express)
		
		
module.exports = RegisterRoutes;