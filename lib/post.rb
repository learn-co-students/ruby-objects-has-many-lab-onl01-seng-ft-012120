class Post
  attr_accessor :author, :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    self.author ? self.author.name : nil
  end
end