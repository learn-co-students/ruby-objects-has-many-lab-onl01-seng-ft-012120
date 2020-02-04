class Author 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(works)
    works.posts = self
  end
  
  def posts
    
  
  
  
end