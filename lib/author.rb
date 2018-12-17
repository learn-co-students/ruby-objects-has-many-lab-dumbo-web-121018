class Author
  attr_accessor :name, :posts

  @@all_post = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@all_post << post
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    @posts << new_post
    @@all_post << new_post
  end

  def self.post_count
    @@all_post.count
  end

end
