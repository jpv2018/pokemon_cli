class API
require 'pry'
  def find_pokemon(name)
    url = "https://pokeapi.co/api/v2/"
    #binding.pry
    #response = 
    HTTParty.get(url + "pokemon/#{name}")
    #response.parsed_response do |pokemon|
     # name = pokemon["name"]
      #id = pokemon["id"]
     # height = pokemon["height"]
      #weight = pokemon["weight"]
      #type = pokemon["types"]
    Pokemon.new(name)
    #end
  end
end