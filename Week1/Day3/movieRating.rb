require 'imdb'
require 'pry'

movies=IO.readlines('movies.txt')
print movies


def ratings(movies)
ratings=[]
movies.each do |movie|
	i=Imdb::Search.new(movie)
	movie_rating=i.movies[0].rating
	ratings.push(movie_rating)
end
ratings
end

def titles(movies)
titles=[]
counter=0
movies.each do |movie|
	i=Imdb::Search.new(movie)
	movie_title=i.movies[0].title
	counter=counter+1
	titles.push("#{counter}. #{movie_title}")
end
titles
end

def print(movies)
	movies_ratings=ratings(movies)
	movies_titles=titles(movies)

	


end

movies_ratings=ratings(movies)
movies_titles=titles(movies)
puts movies_ratings	
puts movies_titles

	