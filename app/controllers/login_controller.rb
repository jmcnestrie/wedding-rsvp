class LoginController < ApplicationController

  def index
  end

  def do_login
    if params[:password] = 'dummy'
      redirect_to '/admin'
    else
      render 'index'
    end
  end

end
