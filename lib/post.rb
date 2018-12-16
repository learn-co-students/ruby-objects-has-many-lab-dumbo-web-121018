class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title = "")
    @title = title
    @author = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    @author.name if @author != nil
  end
end
