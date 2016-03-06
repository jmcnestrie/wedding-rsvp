module SessionsHelper
  def log_in
    session[:logged_in] = true
  end

  def clear_login
    session[:logged_in] = nil
  end
end
