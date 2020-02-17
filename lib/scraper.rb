require 'nokogiri'
require 'open-uri' 
require 'pry'

class FloweringTrees::Scraper
  
  BASEURL = "https://www.willisorchards.com/category/flowering-trees"
  @page = Nokogiri::HTML(open(BASEURL))
  
  
  def self.scrape_trees

    #url => trees.css("a").attr("href").value,
    
    @page.css("div.child-link a").map do |tree|
      tree.text
    end
  end
  
  def self.scrape_prices
    @page.css("p.strong")[1..23].map do |price|
      price.text
    end
  end
  
  def self.url 
    @page.css("div.child-link a").map do |link|
      link.attributes["href"].value 
    end 
  end 
end