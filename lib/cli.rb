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
     puts "To view a specific tree, enter 'name'"
     puts "To search trees by price, enter 'price'"
     puts "To exit the program, type 'exit'"
   end

  def user_command
    input = nil 
    while input != "exit"
      input = gets.chomp 
      if input.downcase == "trees"
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
     
    #  puts "#{object.name}"
    #end
  
    
    
    
   # DirtyBirds::Scraper.scrape 
    #puts "Please enter your favorite players' uniform number!"
    #puts
    #players
    #command
  #end
  
  #def players 
   # DirtyBirds::Player.all.each.with_index(1) do |object, index|
    #puts "#{index}, #{object.name}"
  #end
#end

 # def command
  #  puts
   # puts "Please enter your favorite players' uniform number!"
    #puts
    #puts "Type exit to leave the program"
    #input = ""
    
    #while input != "exit"
     # input = gets.chomp 
      
      #if (1..).include?(input.to_i)
       # @chosen_player = DirtyBirds::Player 
        #  .all[input.to_i - 1]
        #puts 
        #puts "You entered player #{@chosen_player.name}"
        #puts "His uniform number is #{@chosen_player.pl_num}"
        #puts "His position is #{@chosen_player.pl_pos}"
        #puts "For #{chosen_player.name}'s game statistics go to:"
        #puts "#{chosen_player.url}"
        #puts "Type 'r' to view the roster again"
        #puts "Or type the uniform number of another player"
        #puts "You can type 'exit' anytime to leave the program"
        
      #elsif input.downcase == "p"
      #players
      #command
      #elsif input.downcase == "exit"
      #puts "Next year's stats will be much better!"
      #break
    #else 
     # puts "Sorry, please enter a specific number from the roster!"
      #command
    #end
  #end
   # puts "Hope to see you cheering at the next game!"
    #exit
    