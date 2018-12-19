require 'pry'

class Song
  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song_by_name(name)
    song = self.new(name)
    @@all << self
  end

  def artist_name
    if self.artist == nil
      return nil
    else
      self.artist.name
    end
    #binding.pry
  end

  def self.all
    @@all
  end
end
