class Artist 
    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        @songs << song 
        song.artist = self
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song_by_name(name)
        song=Song.new(name)
        add_song(song)
    end

    def self.song_count
        result = []
        all_array = @@all.uniq.flatten
        all_array.each do |i| 
            result << i.songs
        end
        result.flatten.count
    end

end
