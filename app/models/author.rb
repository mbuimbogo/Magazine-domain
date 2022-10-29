class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles
    # get article for a particular author instance
    Article.all.select do |article|
      article.author == @name
    end
  end


end
