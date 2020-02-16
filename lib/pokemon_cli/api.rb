class API

def find_pokemon
  url = "https://pokeapi.co/"
  response = HTTParty.get(url)
  response.parsed_response_each do |pokemon|
    
end