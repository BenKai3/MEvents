module SessionsHelper

  def sign_in(user)
    session[:user_id] = user.id
    session[:full_name] = "#{user.first_name} #{user.last_name}"
    session[:state] = user.state
    self.current_user = user
  end
  
  # setter method
  def current_user=(user)
    @current_user = user
  end

  # getter method
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    session.destroy
  end

  def current_user?(user)
    user == current_user 
  end

  def deny_access
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end

end
