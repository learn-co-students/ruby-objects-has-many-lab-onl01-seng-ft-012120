class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end 
  
  def save
    @@all << self
  end 
  
  def self.all 
    return @@all 
  end 
  
  def artist_name
    if artist 
      return artist.name
      
    else 
      return nil
    end 
  end 
  
end 