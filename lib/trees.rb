require 'pry'

class FloweringTrees::Trees 
  
  attr_accessor :name, :url, :price 
  
  @@all = []
  
  def initialize(tree_hash)
    tree_hash.each do |key, value|
      self.send "#{key}=", value
    end
    
    @@all << self 
  end
  
  def self.create_from_collection(trees_array)
    trees_array.each do |tree|
      self.new(tree)
    end
  end 
  
  def self.all 
    @@all 
  end
  
end