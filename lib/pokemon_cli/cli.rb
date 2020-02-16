class CLI
  
  def start
    puts "Let's find a Pokemon to learn about!"
    API.new.find_pokemon
    run
  end
  
  def run
    puts "Would you like to continue?"
    puts "Please type 'yes' or 'no'"
    user_response = gets.strip
    if user_response.downcase == 'yes' 
      pokemon_names
    elsif user_response.downcase == 'no' 
    quit
    else 
      "Please type 'yes' or 'no'" 
      run
    end
  end
  
  def select_pokemon
    puts "Please enter the ID (Pokedex) number of the pokemon that you would like to know more about."
  end
  
  def about_pokemon
    puts "pokemon_id. pokemon_name"
    puts "height = pokemon_height inches"
    puts "weight = pokemon_weight lbs"
    puts "types = pokemon_types"
    run
  end
  
  def quit
    puts "See you next time!"
  end
  
end