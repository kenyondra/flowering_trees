require_relative "./flowering_trees/version"
require 'pry'
require 'nokogiri'
require_relative './trees'
require_relative './cli'
require_relative './scraper'

module FloweringTrees
  class Error < StandardError; end 
end 