require 'pry'

class FloweringTrees::Trees 
  
  attr_accessor :name, :price 
  
  @@all = []
  
  def initialize(name, price)
   @name = name
   @price = price
   
   @@all << self
  end
 
  def self.all 
    @@all 
  end
  
end