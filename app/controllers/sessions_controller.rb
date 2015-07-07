class SessionsController < ApplicationController
  def create
  	 user = User.where(:email => params[:email]).first
  	 if user && user.authenticate(params[:password_digest])
  		    self.current_user = user
  		    redirect_to root_path, notice: "Welcome #{user.name}"
  	 else 
  	 	redirect_to new_session_path, alert: "Invalid email or password"
  	 end
  end

  def destroy
    self.current_user = nil
  	redirect_to root_path, notice: "You are now logged out #{user.name}"
  end

  def new
  end


end
