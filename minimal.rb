require 'sinatra'

class MyApp < Sinatra::Base
	get '/' do
  	'Minimal Sinatra Hello World!'
	end
end

MyApp.run!