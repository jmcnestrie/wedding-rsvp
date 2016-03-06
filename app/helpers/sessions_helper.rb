module SessionsHelper
  def log_in
    session[:logged_in] = true
  end
end
