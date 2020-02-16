class API
require 'pry'
  def find_pokemon(name)
    url = "https://pokeapi.co/api/v2/pokemon/#{name}"
    response = HTTParty.get(url)
    response.parsed_response["results"].each do |pokemon|
      name = pokemon["species"]
      #id = pokemon["id"]
     # height = pokemon["height"]
      #weight = pokemon["weight"]
      #type = pokemon["types"]
    binding.pry
      Pokemon.new(name, id, height, weight, types)
    end
  end
end