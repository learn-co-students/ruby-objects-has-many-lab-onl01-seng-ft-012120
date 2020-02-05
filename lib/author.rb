class Author
  attr_accessor :name, :post
  @@songcount = 0
  def initialize(name)
    @name  = name 
    @post = []
    
  end
  
  def add_post(post)
    @post << post
    post.author = self
    @@songcount += 1
  end 
  
  def posts
    Post.all
  end 
  
  
  def add_post_by_title(post)
    name = Post.new(post)
    #@songs << song
    name.author = self
    @@songcount += 1
  end 
  
  def self.post_count
    Post.all.count
  end 
    
  
end 