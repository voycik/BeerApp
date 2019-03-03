class MyBeersController < ApplicationController

  def index
    @beers = current_user.my_beers.pluck(:beer_id)
  end

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

  def destroy
    @my_beer = MyBeer.find(params[:id])
    @my_beer.destroy

    redirect_to my_beers_path
  end

end
