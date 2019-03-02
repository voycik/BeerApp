class RandomBeersController < ApplicationController
  def show
    @beer = GetRandomBeer.call
  end
end
