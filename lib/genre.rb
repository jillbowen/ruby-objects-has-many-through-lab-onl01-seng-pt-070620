class Genre 
  attr_accessor :name,:song, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end
  end
  
  def artists
    songs.all.collect do |song|
      song.artist 
  end
  
end