require 'pry'
class Artist
  attr_accessor :name

  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select do |song|
      if song.artist == self
        @songs << song
        #@@song_count += 1
      end
    end
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    #@@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    #@@song_count +=1
  end

  def self.song_count
    @@song_count = Song.all.length
    @@song_count
  end
end