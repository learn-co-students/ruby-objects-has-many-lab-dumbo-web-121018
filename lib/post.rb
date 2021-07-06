class Post
  attr_accessor :author, :title
  @@all = []
  def self.all
    @@all
  end
  def initialize(title)
    @title = title
    self.class.all << self
  end

  def add_author(author)
    @author = author
  end

  def author_name
    if self.author
      self.author.name
    end
  end

end
