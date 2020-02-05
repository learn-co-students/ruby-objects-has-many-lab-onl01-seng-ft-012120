class Post 
  attr_accessor :title, :author 
  
  @@all = []
  
  def initialize(title)
    @title = title 
    save
  end 
  
  def save
    @@all << self
  end 
  
  def self.all 
    return @@all 
  end 
  
  def author_name
    if author 
      return author.name 
      
    else 
      return nil
    end 
  end 
end 