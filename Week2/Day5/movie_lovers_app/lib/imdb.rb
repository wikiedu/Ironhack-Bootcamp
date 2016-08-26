require 'imdb'
require 'pry'

class MoviesSearched

	def search(movie_name)

		movie_search = Imdb::Search.new(movie_name)
		list_movies = []
		i=0
		if movie_search.movies.size >9
			imax=9
		else
			imax=search.movies.size
		end

		@movies = movie_search.movies.map do |movie|
			if (movie.poster != nil) && (i<=imax)
				i=i+1
				movie
			elsif i>imax
				break
			end


		end

	end

	def movies
		@movies
	end

end