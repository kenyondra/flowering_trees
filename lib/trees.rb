require 'pry'

class FloweringTrees::Trees 
  
  attr_accessor :name, :price 
  
  @@all = []
  
  def initialize(name, price)
   @name = name
   @price = price
   
   @@all << self
  end
  
  # def self.create_from_collection(trees_array)
  #   trees_array.each do |tree|
  #     self.new(tree)
  #   end
  # end 
  
  def self.all 
    @@all 
  end
  
end