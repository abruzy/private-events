module SessionsHelper

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def assign_current_user(user)
    session[:user_id] = user.id
  
    current_user
  end

  def logout
    session.destroy(:user_id)
    @current_user = nil
  end
end
