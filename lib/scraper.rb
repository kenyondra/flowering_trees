require 'nokogiri'
require 'open-uri' 
require 'pry'

class FloweringTrees::Scraper
  
  BASEURL = "https://www.willisorchards.com/category/flowering-trees"
  @page = Nokogiri::HTML(open(BASEURL))
  
  
  def self.scrape_trees

    #url => trees.css("a").attr("href").value,
    
    @page.css("div.child-link a").each_with_index do |trees, num|
      
    end
    binding.pry
    #price = @page.css("p.strong")[1..23]
  end
 
end