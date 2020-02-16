class CLI
  
  def start
    puts "Let's find a Pokemon to learn about!"
    run
  end
  
  def run
    puts "Would you like to continue?"
    puts "Please type 'yes' or 'no'"
    pokemon_names
  end
  
  def pokemon_names
    puts "pokemon_id. pokemon_name"
    select_pokemon
  end
  
  def select_pokemon
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