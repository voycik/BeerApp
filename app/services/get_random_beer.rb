require "open-uri"

class GetRandomBeer
  RANDOM_BEER_URI = 'https://api.punkapi.com/v2/beers/random'

  def initialize; end

  def self.call
    URI.parse(RANDOM_BEER_URI).read
  end
end
