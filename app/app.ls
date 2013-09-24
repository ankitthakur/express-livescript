express = require 'express'
app = express 


configModule = require './config/config'
Config = configModule.Config
config = new Conf app, express


loginModule = require './modules/login'
registerModule = require './modules/register'

Login = loginModule.Login;
login = new Login app, express


Register = registerModule.Register
register = new Register app, express
