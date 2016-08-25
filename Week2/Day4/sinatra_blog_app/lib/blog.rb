require 'date'


class Blog	
    def initialize
      @posts = []

    end

    def add_post(post)
    	@posts.push(post)

    end

    def posts
        @posts
    end

    def latest_posts
        @posts.sort! { |a, b|  b.date <=> a.date}
    end

    # def publish_front_page
    # 	posts = @posts.sort{|a,b| b.date <=> a.date}
    # 	posts.each do |post|
    # 		puts post.title
    # 		puts "*********************"
    # 		puts post.text
    # 		puts "-----------------------------"
    #   end
    # end
    
end

# post1 = Post.new("Post 1", Date.new(2016,8,12), "text post 1")
# post2 = Post.new("Post 2", Date.new(2016,8,10), "text post 2")
# post3 = Post.new("Post 3", Date.new(2016,8,11), "text post 3")

# blog = Blog.new

# blog.add_post(post1)
# blog.add_post(post2)
# blog.add_post(post3)

# blog.publish_front_page