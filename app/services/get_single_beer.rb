require "open-uri"

class GetSingleBeer
  BEER_URI = 'https://api.punkapi.com/v2/beers/'

  def initialize(id)
    @id = id
  end

  def call
    single_beer_uri = BEER_URI + @id.to_s
    URI.parse(single_beer_uri).read
  end
end
