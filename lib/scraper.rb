require 'nokogiri'
require 'open-uri' 
require 'pry'

class FloweringTrees::Scraper
  
  BASEURL = "https://www.willisorchards.com/category/flowering-trees"
  @page = Nokogiri::HTML(open(BASEURL))
  @@hash = {}
  
  
  def self.scrape_page 
    
    name = @page.css("div.child-link a").children.each  {|tree|}
    
    #binding.pry 
    #list.map {|tree| tree.text} 
      
    #url => trees.css("a").attr("href").value,
    name = @page.css("div.child-link a")
    price = @page.css("p.strong")[1..23]
    name.each do |name|
      price.each do |price|
        @@hash[:name] = name.text
        @@hash[:price] = price.text
      end
    end
    @@hash
    end 
     
    price = @page.css("p.strong")[1..23].text
    FloweringTrees::Trees.new(name, price)
    
end