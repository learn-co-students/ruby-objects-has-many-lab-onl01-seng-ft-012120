require 'pry'
class Post
  @@all =[]
  def initialize(title)
    @title = title
    save
  end
  attr_accessor :title, :name, :author
  
  def author_name
    if author 
      author.name
    else
      nil 
    end
  end
  def save
    @@all << self
  end 
  
  def self.all
    @@all
  end
end