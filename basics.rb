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

get '/form' do
	erb :form
end

post '/form' do
	"You submitted : '#{params[:message]}'"
end

