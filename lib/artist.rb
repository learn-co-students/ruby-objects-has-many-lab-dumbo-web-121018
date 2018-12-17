class Artist
  attr_accessor :name, :songs
  @@count = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@count << song
    song.artist = self #what??????
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@count << song
  end

  def self.song_count
    @@count.count
  end
end
