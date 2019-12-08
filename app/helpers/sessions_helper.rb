# frozen_string_literal: true

module SessionsHelper
  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def assign_current_user(user)
    session[:user_id] = user.id

    current_user
  end

  def logout
    session.destroy
    @current_user = nil
  end

  private

  def require_login
    return flash[:error] = 'You must be logged in to access this section' if current_user

    redirect_to login_url # halts request cycle
  end
end
