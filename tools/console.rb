require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Peter")
magazine1 = Magazine.new("Magazine1", "Hikes")
magazine2 = Magazine.new("Magazine2", "Hikes1")
article1 = Article.new(author1, magazine1,"Title")
article2 = Article.new(author1,magazine1,"Title2")
author1.add_article(magazine1,"Title3")










### DO NOT REMOVE THIS
binding.pry

0
