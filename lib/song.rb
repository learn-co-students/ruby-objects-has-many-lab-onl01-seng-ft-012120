class Song
  @@all = []
  attr_accessor :name, :artist
  def initialize(name)
    self.name = name
    self.save
  end

  def save
    @@all << self
  end

  def self.all 
    @@all
  end
  def artist_name
    if self.artist
      return self.artist.name
    end
    nil
  end
end