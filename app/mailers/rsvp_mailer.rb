class RsvpMailer < ApplicationMailer

  def notification(rsvp)

    @rsvp = rsvp
    
    recipients = Rails.application.config_for(:email)['recipients']

    mail to: recipients, subject: "#{rsvp.name} has sent their RSVP!"
  end

end
