class UsersController < ApplicationController

  def show
    unless current_user && current_user.id == params[:id].to_i
      redirect_to :root, :error => "Cannot view reservations for other users"
    end
    @user = current_user
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to restaurants_url, notice: "Signed up!"
    else
      render "new"
    end
  end


  private
  def user_params
    params.require(:user).permit(:email, :name, :phone_number, :password, :password_confirmation)
  end
end
