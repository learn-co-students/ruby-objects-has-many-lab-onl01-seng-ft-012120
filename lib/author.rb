class Author
  def initialize(name = nil)
    @name = name
    @author = name
    @title = title
  end
  attr_accessor :name, :title, :author
  
  def add_post(title)
    title.author = self
  end
  
  
  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
  end
  
  def posts
    Post.all.select{|post| post.author = self}
  end
  
  def self.post_count
    Post.all.count
  end
end