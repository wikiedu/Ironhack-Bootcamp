require "sinatra"
require 'date'
require 'pry'
require_relative './lib/blog.rb'
require_relative './lib/post.rb'

blog = Blog.new
blog.add_post(Post.new("Post: Edu's Birthday",Date.new(2016,6,15),"Today is Edu's Birthday","Terror","Edu Calderon"))
blog.add_post Post.new("Post: Anna's Birthday",Date.new(2016,5,6),"Today is Anna's Birthday","Terror", "Mario Martinez")
blog.add_post Post.new("Post: Mama's Birthday",Date.new(2016,8,23),"Today is Mama's Birthday","Terror","Lucas Ras")

get "/" do
	@posts = blog.latest_posts
	erb(:home)
end

get "/post_details/:index" do

	@posts = blog.latest_posts
	@index = params[:index].to_i
	erb(:post)
	
end


get "/new_post" do
	erb(:new_post)

end

post "/new" do
	@date = DateTime.now
	@name = params[:post_name]
	@text = params[:post_text]
	@author = params[:post_author]
	@category = params[:post_category]
	blog.add_post(Post.new(@name,@date,@text,@category,@author))

	redirect "/"
end


