class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = @restaurant.reservations.build
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(resturant_params)
    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end
  end

  private 
  def resturant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :description, :picture, :capacity)
  end
end
