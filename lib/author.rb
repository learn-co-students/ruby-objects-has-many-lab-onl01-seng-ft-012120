require 'pry'
class Author 
  
  attr_accessor :name
  
  @@posts = []
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all 
  end 
  
  def add_post(title)
    title.author = self
    @@posts << title
  end 
  
  def add_post_by_title(title)
   add_post(Post.new(title))
  end 
  
  def self.post_count
    Post.all.length 
  end 
  
end 