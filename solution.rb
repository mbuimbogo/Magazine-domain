# Please copy/paste all three classes into this file to submit your solution!

class Article
    attr_reader :title, :magazine
    @@all = []
  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end
    def self.all
    @@all
    end

    def author
        @author.name
    end

end



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
  
      def magazines 
        # get magazine instances from articles--articlles is a helper method
        articles.map {|article|
          article.magazine}.uniq
      end
  
      def add_article(magazine, title)
        Article.new(self,magazine,title)
      end
  
      def topic_areas
        magazines.collect do |magazine|
          magazine.category.uniq
        end
      end
  
    end
  
  
  end
  

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
  
    def self.find_by_name(name)
   self.all.find do |magazine|
   magazine.name == name
   end
  end
  def article_titles
    Article.all.map{|article| article.title}
  end
  
  def contributing_authors
    #tally authors with more than two articles
    # authors = Article.all.map{|article| article.author}.uniq
  
  end
  
  end
  