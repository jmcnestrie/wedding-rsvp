class LoginController < ApplicationController

  def index
  end

  def do_login
    if params[:password] = 'dummy'
      log_in
      redirect_to '/admin'
    else
      render 'index'
    end
  end

  def logout
    clear_login
    redirect_to '/'
  end

end
