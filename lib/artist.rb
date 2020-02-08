class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    return @@all
  end

  def add_song(song)
    song.artist = self
  end
  
  def self.song_count
    return Song.all.count
  end

  def songs
    return Song.all.select {|s| s.artist === self}
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
end