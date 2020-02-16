class API

def find_pokemon
  url = "https://pokeapi.co/"
  response = HTTParty.get(url)
  response.parsed_response_each do |pokemon|
    name = pokemon["name"]
    id = pokemon["id"]
    height = pokemon["height"]
    weight = pokemon["weight"]
    type = pokemon["type"]
  end
end