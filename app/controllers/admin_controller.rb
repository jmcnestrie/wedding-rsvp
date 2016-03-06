class AdminController < ApplicationController

  def index
    if session[:logged_in].nil?
      redirect_to login_index_path
    end
  end

end
