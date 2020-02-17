class API
  require 'pry'
  def find_pokemon(name)
    url = "https://pokeapi.co/api/v2/"
    #binding.pry
    response = HTTParty.get(url + "pokemon/#{name}")
    response.parsed_response 
      name = response["name"]
      id = response["id"]
      height = response["height"]
      weight = response["weight"]
        
    Pokemon.new(name, id, height, weight)
   end
end