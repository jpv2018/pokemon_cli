class CLI
  attr_accessor
  def start
    API.new.find_pokemon(nil)
    puts "Let's find a Pokemon to learn about!"
    run
  end
  
  def run
    puts "Would you like to continue?"
    puts "Please type 'yes' or 'no'"
    user_response = gets.strip
    if user_response.downcase == 'yes' 
      select_pokemon
    elsif user_response.downcase == 'no' 
    quit
    else 
      "Please type 'yes' or 'no'" 
      run
    end
  end
  
  def select_pokemon
    puts "Please enter the name of the pokemon that you would like to know more about."
    user_response = gets.strip
    if API.find_pokemon(user_response)
      about_pokemon
    else
      puts "That name did not match an existing pokemon in our database."
      puts "Please try again"
      select_pokemon
    end
  end
  
  def about_pokemon
    puts "pokemon_id. #{self.name}"
    puts "height = pokemon_height inches"
    puts "weight = pokemon_weight lbs"
    puts "types = pokemon_types"
    run
  end
  
  def quit
    puts "See you next time!"
  end
  
end