class RsvpsController < ApplicationController

  # GET /rsvps
  # GET /rsvps.json
  def index
    @rsvps = Rsvp.all
  end

  # POST /rsvps
  # POST /rsvps.json
  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save

      RsvpMailer.notification(@rsvp).deliver_later

      flash[:success] = "We have received you RSVP thank you!"
    else
      flash[:warning] = "There was a problem with your RSVP, please try again"
    end
    redirect_to "/"
  end

  private

    def rsvp_params
      params.require(:rsvp).permit(:name, :email, :phone, :events, :guests, :guestinfo, :message)
    end
end
