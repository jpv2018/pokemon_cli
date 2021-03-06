class CLI
  attr_accessor :new_pokemon
  
  def find_pokemon(name)
    if Pokemon.find_by_name(name)
      self.new_pokemon = Pokemon.find_by_name(name)
    else
      API.new.find_pokemon(name)
    end
      
  end
  
  def start
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
    if find_pokemon(user_response)
      about_pokemon
    end
  end
  
  def about_pokemon
    new_pokemon = Pokemon.all.last
    puts "ID = #{new_pokemon.id}. Name = #{new_pokemon.name}" unless new_pokemon.id == nil
    if new_pokemon.id == nil
      puts "That name did not match an existing Pokemon"
      select_pokemon
    end
    puts "Height = #{new_pokemon.height * 10} centimeters" unless new_pokemon.height == nil
    puts "Weight = #{new_pokemon.weight / 10} kgs" unless new_pokemon.weight == nil
    run unless new_pokemon.id == nil
  end
  
  def quit
    puts "See you next time!"
  end
  
end