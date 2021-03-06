# frozen_string_literal: true

module SessionsHelper
  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
