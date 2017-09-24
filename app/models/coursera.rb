class Coursera
  include HTTParty

  base_uri "http://pokeapi.co/api/v2/pokemon"

  def self.for term
    puts "term: #{term}"
    get("/#{term}")
  end
end
