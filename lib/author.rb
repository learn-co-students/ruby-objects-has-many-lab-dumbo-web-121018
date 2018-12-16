class Author
  attr_reader :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post)
    post.author = self
    self.posts << post
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    add_post(post)
  end

  def self.post_count
    self.all.inject(0) {|count, author| count + author.posts.count}
  end

end
