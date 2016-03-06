class GuestDetailController < ApplicationController

  def create
    @guest_detail = GuestDetail.new(guest_detail_params)
    if @guest_detail.save
      flash[:success] = "Thank you"
    else
      flash[:alert] = @guest_detail.errors
    end
      redirect_to "/"
  end

  private

  def guest_detail_params
    params.require(:guest_detail).permit(:attending, :guest_1_name, :guest_2_name, :children, :dietary_reqs, :email, :phone, :comments)
  end

end
