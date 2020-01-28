require 'pry'
class Song
  attr_accessor :artist
  attr_reader :name 
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def artist_name
    self.artist.name if self.artist
  end
  
  def self.all
    @@all
  end
end