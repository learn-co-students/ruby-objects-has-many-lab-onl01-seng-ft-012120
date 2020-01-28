class Post
  attr_accessor :author
  attr_reader :title
  
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end
  
  def author_name
    self.author.name if self.author
  end
  
  def self.all
    @@all
  end
  
end