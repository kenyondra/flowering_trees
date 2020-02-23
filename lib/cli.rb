class FloweringTrees::CLI
    
   def run
     welcome
     user_command
   end
   
   def list_trees
     @trees = FloweringTrees::Scraper
     @trees.scrape_trees.each_with_index do |tree, num|
       puts "#{num + 1}. #{tree}"
       puts ""
      end
     puts "Which tree would you like to learn about?"
      @input = gets.strip.to_i-1
     @current_tree = @trees.scrape_trees[@input]
     @current_tree_price = @trees.scrape_prices[@input]
      puts "The tree you chose was #{@current_tree}"
      puts "The price of that tree is #{@current_tree_price}"
      puts "To get detailed info about #{@current_tree}, please copy and paste the link in your browser navigation bar:"
      puts @trees.url[@input]
      puts ""
      puts "Enter 'trees' to view the list again"
      puts "Or 'exit' to leave the program"
      
     FloweringTrees::Trees.new(@current_tree, @current_tree_price)
  end
   
  def welcome 
     puts ""
     puts "Welcome to Willis Orchards', the best place to make your yard look great!"
     puts ""
     #FloweringTrees::Scraper.scrape 
     puts "To view the list of flowering trees, enter 'trees'"
     puts ""
     puts "To exit the program, type 'exit'"
   end

  def user_command
    input = nil 
    while input != "exit"
      input = gets.chomp 
      if input.downcase == "trees"
        puts ""
        puts "Below are the best category of flowering trees"
        puts ""
        list_trees
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
     
  def enter_correct_input
    puts ""
    puts "Enter correct input"
    puts ""
  end