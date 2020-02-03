class  Post
  @@all = []
  attr_accessor :title, :author
  def initialize(title)
    self.title = title
    self.save
  end
  def save
    @@all << self
  end
  def self.all 
    @@all
  end

  def author_name
    if self.author
      return self.author.name
    end
    nil
  end

end