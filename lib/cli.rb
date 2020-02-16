class FloweringTrees::CLI
    
   def run
     welcome
     user_command
   end
   
   def list_trees
     @trees = FloweringTrees::Scraper
     @trees.scrape_trees.each_with_index do |tree, num|
       puts "#{num + 1}. #{tree}"
     end
     puts "Which tree would you like to learn about?"
      @input = gets.strip.to_i-1
     @current_tree = @trees.scrape_trees[@input]
     @current_tree_price = @trees.scrape_prices[@input]
      puts "The tree you chose was #{@current_tree}"
      puts "The price of that tree is #{@current_tree_price}"
      
     #FloweringTrees::Scraper.new
     FloweringTrees::Trees.new(@current_tree, @current_tree_price)
     binding.pry
   end
   
   #def self.create_from_collection
     
   def welcome 
     puts ""
     puts "Welcome to Willis Orchards', the best place to make your yard look great!"
     puts ""
     #FloweringTrees::Scraper.scrape 
     puts "To see the list of flowering trees, enter 'trees'"
     puts "To view a specific tree, enter 'search by name'"
     puts "To search trees by price, enter 'search by price'"
     puts "To exit the program, type 'exit'"
   end

  def user_command
    input = nil 
    while input != "exit"
      input = gets.chomp 
      if input.downcase == "trees"
        puts ""
        puts "To see tree info, type trees"
        puts ""
        list_trees
        elsif input.downcase == "search by name"
          list_trees_by_name
        elsif input.downcase == "search by price"
          list_trees_by_price
        elsif input.downcase == "exit"
          exit_app
        else 
          enter_correct_input 
        end
      end
    end
  end
    
  def exit_app
    puts "Goodbye, see you next time!"
    exit 
  end 
  
  def display_trees
    Trees.all.each {|tree| puts "#{tree.name}"}
    puts ""
  end 
     
  def list_trees_by_name
    puts ""
    puts "Please enter the name of your choice tree"
    puts ""
    input = nil 
    while input != "exit"
      input = gets.chomp 
      Trees.all.each do |trees|
        if tree.by_name != nil 
          puts "#{tree.name}"
          puts "#{tree.url}"
          puts ""
          puts "Price: #{tree.price}"
          puts ""
        end
      end
    end
  end
  
  def enter_correct_input
    puts ""
    puts "Enter correct input"
    puts ""
  end
  