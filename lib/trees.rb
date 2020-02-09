class FloweringTrees::Trees 
  
  attr_accessor :name, :url, :price 
  
  @@all = []
  
  def initialize(url, name, price)
    @name = name 
    @url = url 
    @price = price 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
end