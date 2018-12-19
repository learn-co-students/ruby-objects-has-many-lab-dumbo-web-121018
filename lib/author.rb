require 'pry'

class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    @posts << new_post
    new_post.author = self
  end

  def self.post_count
    Post.all.count
    #binding.pry
  end

end
