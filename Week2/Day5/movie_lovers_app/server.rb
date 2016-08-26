require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'imdb'
# We're going to need to require our class files
require_relative('./lib/imdb.rb')
# require_relative('./lib/todo.rb')

ms = MoviesSearched.new

get '/' do
	erb(:home)
end

get '/movie_results' do


	erb(:movie_results)
end


post '/imdb_search' do

	movie_name = params[:search]
	ms.search(movie_name)
	binding.pry
	redirect '/movie_results'
end