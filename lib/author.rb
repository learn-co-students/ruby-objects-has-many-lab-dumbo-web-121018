class Author
  attr_accessor :name
  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post)
    post.add_author(self)
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.add_author(self)
  end

  def self.post_count
    Post.all.select { |post| post.author }.count
  end
end
