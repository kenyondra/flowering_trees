#require 'nokogiri'
#require 'open-uri' 
#require 'pry'

class FloweringTrees::Scraper
  
  BASEURL = "https://www.willisorchards.com/category/flowering-trees"
  

  def self.scrape_page 
    page = Nokogiri::HTML(open("https://www.willisorchards.com/category/flowering-trees#.Xj-qV2hKg2w"))
    list = page.css("div.child-link")
    
    fl_trees = list.map do |trees|
    url = trees.css("a").attr("href").value,
    name = trees.css("a").text,
    price = trees.css("p.strong").text
    full_url = BASEURL + url
    
    FloweringTrees::Trees.new(url, name, price)
  end
end
end
