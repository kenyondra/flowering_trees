require 'nokogiri'
require 'open-uri' 
require 'pry'

class FloweringTrees::Scraper
  

  def self.scrape
    page = Nokogiri::HTML(open("https://www.willisorchards.com/category/flowering-trees"))
    fl_trees = page.css("div.child-table").each do |trees|
    url = trees.css("a").attr("href").value,
    name = trees.css("a").text,
    price = trees.css("p.strong").text
    
    FloweringTrees::Trees.new(url, name, price)
  end
end
end