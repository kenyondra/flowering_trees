require 'nokogiri'
require 'open-uri' 
require 'pry'

class FloweringTrees::Scraper
  
  BASEURL = "https://www.willisorchards.com/category/flowering-trees"
  

  def self.scrape_page 
    page = Nokogiri::HTML(open("https://www.willisorchards.com/category/flowering-trees#.Xj-qV2hKg2w"))
    list = page.css("div.child-link")
    trees = []
    
    fl_trees = list.map do |trees|
      tree_hash = {
    url => trees.css("a").attr("href").value,
    name => trees.css("a").text,
    price => trees.css("p.strong").text
      }
      end
      trees << tree_hash
      
    full_url = BASEURL + url
    
    FloweringTrees::Trees.new(url, name, price)
    end
    trees 
  end
