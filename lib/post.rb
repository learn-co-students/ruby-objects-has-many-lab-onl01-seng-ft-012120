class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all.push(self)
  end

  def author_name
    return author.name if author
  end
  
  def self.all
    return @@all
  end
end