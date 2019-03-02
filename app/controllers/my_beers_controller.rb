class MyBeersController < ApplicationController
  def create
    @my_beer = MyBeer.new
    @my_beer.beer_id = JSON.parse($beer)[0]['id']
    @my_beer.user_id = current_user.id
    if @my_beer.save
      flash[:success] = "You saved this beer"
    else
      flash[:danger] = "Something gone wrong :("
    end
  end

end
