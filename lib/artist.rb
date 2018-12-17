require 'pry'

class Artist
  attr_accessor :name, :songs
  # @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # @@all << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    @songs << (song.artist = self)
  end

  def add_song_by_name(title)
    new_song = Song.new(title)
    new_song.artist = self
  end

  




  def self.song_count
    Song.all.size

  end





  def self.all
    @@all
  end

end
