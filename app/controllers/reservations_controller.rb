class ReservationsController < ApplicationController
  before_filter :load_restaurant
  before_filter :ensure_logged_in only:[:create, :destroy]
  
  def index
    @reservations = Reservation.all
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    r = Reservation.find(params[:restaurant_id])
    t = Timeslot.find(params[:timeslot_id])
    @reservation = t.reservations.build (
      :restaurant_name => r.name,
      :time => t.full_date
      )
    @reservation.user = current_user 

    if current_user.reservation.where(appointment => @reservation.appointment).empty?
      if @reservation.save
        t.available_tables -= 1
        t.saves
        
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
