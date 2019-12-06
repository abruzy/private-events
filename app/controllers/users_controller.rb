class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_param)
    if @user.save
      assign_current_user(@user)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def profile
    @user = current_user
  end
  
  def registered_events
    @registed_events = current_user.attended_events
  end
  
  def my_events
    @events = current_user.events
  end

  private

  def user_param
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
