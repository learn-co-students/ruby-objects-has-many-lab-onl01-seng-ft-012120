class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    return @@all
  end

  def add_post(post)
    post.author = self
  end

  def self.post_count
    return Post.all.count
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def posts
    return Post.all.select {|p| p.author === self}
  end
end