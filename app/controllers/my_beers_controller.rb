class MyBeersController < ApplicationController
  before_action :authenticate_user!
  def index
    @beers = current_user.my_beers.pluck(:beer_id)
  end

  def create
    @my_beer = MyBeer.new
    @my_beer.beer_id = JSON.parse($beer)[0]['id']
    @my_beer.user_id = current_user.id
    if @my_beer.save
      flash[:success] = "You saved #{JSON.parse($beer)[0]['name']} to your beers"
      redirect_to my_beers_path
    else
      flash[:danger] = "Something gone wrong :("
    end
  end

  def destroy
    @my_beer = MyBeer.find(params[:id])
    unless @my_beer.user == current_user
      flash[:danger] = "You can remove only your saved beers."
      redirect_to root_path
    else
      @my_beer.destroy
      flash[:success]
      redirect_to my_beers_path
    end
  end

end
