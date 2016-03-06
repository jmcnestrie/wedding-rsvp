class AdminController < ApplicationController

  def index
    if session[:logged_in].nil?
      redirect_to '/login'
    end
  end

end
