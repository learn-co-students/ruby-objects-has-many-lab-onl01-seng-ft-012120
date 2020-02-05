class Song 
  @@all = []
  def initialize(name)
    @name = name 
    @genre = genre
    save
  end
  attr_accessor :artist, :name, :genre
  
  def artist_name
    if artist 
      artist.name
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