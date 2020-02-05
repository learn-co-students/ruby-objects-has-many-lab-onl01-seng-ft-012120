class Author
  
  @@post_count = 0

  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
     @@post_count += 1
     @posts << post
     post.author = self
   end
  
  def add_post_by_title(title)
    @@post_count += 1
    new_post = Post.new(title)
    self.add_post(new_post)
  end
  
  def self.post_count
    @@post_count
  end
  
end