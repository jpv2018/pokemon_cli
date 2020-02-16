class API

  def find_pokemon
    url = "https://pokeapi.co/api/v2"
    response = HTTParty.get(url)
    response.parsed_response.each do |pokemon|
      name = pokemon["name"]
      id = pokemon["id"]
      height = pokemon["height"]
      weight = pokemon["weight"]
      type = pokemon["types"]
    
    
      Pokemon.new(name, id, height, weight, types)
    end
  end
end