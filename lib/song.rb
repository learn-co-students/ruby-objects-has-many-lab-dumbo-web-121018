class Song
  attr_accessor :name, :artist
  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def add_artist(artist)
    @artist = artist
  end

  def artist_name
    if self.artist
      self.artist.name
    end
  end
end
