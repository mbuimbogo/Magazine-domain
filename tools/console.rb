require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Peter")
magazine1 = Magazine.new("Magazine1", "Hikes")
article1 = Article.new(author1, magazine1,"Title")
article2 = Article.new(author1,magazine1,"Title2")










### DO NOT REMOVE THIS
binding.pry

0
