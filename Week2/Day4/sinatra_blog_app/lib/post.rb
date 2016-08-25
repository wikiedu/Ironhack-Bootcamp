

class Post
    attr_reader :title, :date, :text, :category, :author
    def initialize(title, date, text, category, author)
      @title = title
      @date = date
      @text = text
      @category = category
      @author = author
    end

    def title
        @title
    end

    def date
        @date
    end

    def text 
        @text
    end


end



# post1 = Post.new("Post 1", Date.new(2016,8,12), "text post 1")
# post2 = Post.new("Post 2", Date.new(2016,8,10), "text post 2")
# post3 = Post.new("Post 3", Date.new(2016,8,11), "text post 3")

# blog = Blog.new

# blog.add_post(post1)
# blog.add_post(post2)
# blog.add_post(post3)

# blog.publish_front_page