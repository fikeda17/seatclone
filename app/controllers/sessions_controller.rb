class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	 if user && user.authenticate(params[:password])
  		 sessions[:user_id] = user_id
  		 redirect_to restaurants_url, :notice => "Logged in!"
  	 else 
  	 	flash.new[:alert] = "Invalid email or password"
  	 	render "new"
  	 end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to restaurants_url, :notice -> "Logged out!"
  end
end
