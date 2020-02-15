class FloweringTrees::CLI
    
   def run 
     list_trees
     greeting
     user_command
   end
   
   def list_trees
     trees_array = FloweringTrees::Scraper.scrape_page
     Trees.create_from_collection(trees_array)
   end
   
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
        display_trees
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