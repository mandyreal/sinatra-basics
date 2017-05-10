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

get '/secret' do
	erb :secret
end

post '/secret' do
	params[:secret].reverse
end

get '/decrypt/:secret' do
	params[:secret].reverse
end

not_found do
  halt 404, 'page not found'
end