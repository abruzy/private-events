# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by_email(params[:email])

    if @user
      assign_current_user(@user)
      redirect_to root_url, notice: 'Logged in!'
    else
      flash.now[:danger] = 'user does not exist'
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: 'Logged out'
  end
end
