class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def artist_name
    return artist.name if artist
  end
  
  def self.all
    return @@all
  end
end
