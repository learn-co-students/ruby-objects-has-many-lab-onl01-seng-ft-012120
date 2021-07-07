require 'pry'

class Artist 
  
  attr_accessor :name #has an attr_accessor for name
  @@songs = []
  
  def initialize(name) #is initialized with a name 
    @name = name 
  end
  
  def songs # make Song class in song.rb 
    Song.all # has many songs
  end 
   
  def add_song(song) #takes in an argument of a song
    song.artist = self #associates that song with the artist by telling the song that it belongs to that artist
    @@songs << song 
  end 
  
  def add_song_by_name(name) #takes in an argument of a song name
    add_song(Song.new(name)) #creates a new song with it and associates the song and artist
  end 
  
  def self.song_count #is a class method (self)
    Song.all.length #returns the total number of songs associated to all existing artists
  end   
  
end 