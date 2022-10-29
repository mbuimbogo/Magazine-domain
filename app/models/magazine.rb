class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    # add the initialized object to a class variable called all
    @@all << self
  end
  def contributors
    Article.all.filter{|article|
    article.magazine.name == @name}
    .map{|article|article.author}.uniq
  end



  def self.all
    @@all
  end

end
