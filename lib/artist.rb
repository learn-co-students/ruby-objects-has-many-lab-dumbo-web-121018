class Artist
  attr_accessor :name
  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.add_artist(self)
  end

  def add_song_by_name(song_name)
    this_song = Song.new(song_name)
    self.add_song(this_song)
  end

  def self.song_count
    Song.all.select { |song| song.artist }.count
  end
end
