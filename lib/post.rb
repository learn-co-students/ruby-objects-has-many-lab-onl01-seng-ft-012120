class Post
  attr_accessor :author, :title, :name

    @@all = []

  def initialize(title)
   @title = title
   @@all << self
   @name = name
  end

  def self.all
    @@all
  end

  def author_name
    if author == nil
      return nil
    else
      self.name = author.name
    end
  end
end
