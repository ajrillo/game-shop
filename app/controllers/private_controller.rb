class PrivateController < ApplicationController
  def home
  end
  
  def custgamesin
  end
  
  def custgamesout
    @customer_name = params[:customer_name_in]
    r = Customer.find_by_last(@customer_name)
    @game_list = r.games
  end
  
  def new
    flash[:notice] = 'Please enter your Login Credentials'
  end
  
  def create
    user = User.find_by_userid(params[:userid])
    if user and user.authenticate(params[:password])
      redirect_to private_home_path
    else
      flash[:notice] = 'Invalid Username or Password'
      render 'new'
    end
  end
end