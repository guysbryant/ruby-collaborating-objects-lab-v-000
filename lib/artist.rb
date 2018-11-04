class Artist
<<<<<<< HEAD
  attr_accessor :name, :songs
=======
  attr_accessor :all, :name
>>>>>>> c1f6594a98ac249665c9422d8134b83193c6818d
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
<<<<<<< HEAD
  def self.find_or_create_by_name(name)
    @@all.each {|artist| return artist if artist.name == name}
    name = Artist.new(name)
    name.save
    name
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def self.all
    @@all
=======
  def find_or_create_by_name(name)
    @@all.each {|artist| return artist if artist.name == name}
    name = Artist.new(name)
  end
  
  def add_song(song)
    @songs << song
>>>>>>> c1f6594a98ac249665c9422d8134b83193c6818d
  end
  
  def save
    @@all << self
  end
  
<<<<<<< HEAD
  def print_songs
    @songs.each{|song| puts song.name}
  end
  
=======
>>>>>>> c1f6594a98ac249665c9422d8134b83193c6818d
end