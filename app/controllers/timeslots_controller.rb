class TimeslotsController < ApplicationController
  before_filter :load_restaurant 

  def index
  	redirect_to @restaurant
  end

  def show 
  	@timeslot = Timeslot.find(params[:id])
  	@timeslot_set = @restaurants.timeslots.where(:full_date => @timeslot.full_date)
  end

  def new
  end

  def create
  	
  end

  private
  def load_restaurant
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end
end
