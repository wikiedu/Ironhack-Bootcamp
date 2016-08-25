require_relative '../lib/blog.rb'
require_relative '../lib/post.rb'

require 'pry'

describe Blog do 
	describe "posts" do

	it "returns an array of all the information of posts" do
		blog = Blog.new
		binding.pry
		blog.add_post(Post.new("Post 1",Date.new(2016,6,15),"Today is Edu's Birthday"))
		binding.pry
		expect(blog.posts).to eq([blog])
	end
	end
end
