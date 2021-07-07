class Artist

  attr_accessor :name
#artist has a name 

@@all = []
  def initialize (name)
    @name = name #an artist has a name
    @@all << self #an artist has songs it should know
    #set the instance variable songs equal to an empty array
    #to store songs
  end
#an Artist should know the name of their songs

def add_song(song)
  
  @@all << self 
end 
end 

# def self.all
#   @@all
# end 
  
# def songs 
#   @songs 
# end 

# # def add_song(song)
#   Artist.all.select do |title|
#   title.name == self 
# end 

# def add_song_by

# end 