
class Artist
    attr_accessor :name
    @@song_count = 0

    @@all=[]

    def initialize(name)
      @name = name
      @songs = [] #empty collection of songs
      @@all << self
    end
  

    def songs
      @songs
      Song.all.select{|song| song.artist==self}
    end
  
    def add_song(song)
      
      song.artist = self
      
    end
  
    def add_song_by_name(song_name)
      song = Song.new(song_name)
      
      song.artist = self
      
    end
  
    def self.song_count
      Song.all.count
    end
  
  end 