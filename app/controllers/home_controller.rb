class HomeController < ApplicationController

  def index
    @guest_detail = GuestDetail.new
  end

end
