require 'sinatra'

get '/' do
	'Hello, World!'
end

get '/about' do
	'A little about ME'
end

get '/hello/:name/:city' do
	"Hello there, #{params[:name]} from #{params[:city].upcase}	"
end
