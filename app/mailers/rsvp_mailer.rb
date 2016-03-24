class RsvpMailer < ApplicationMailer

  def notification

    recipients = Rails.application.config_for(:email)['recipients']

    mail to: recipients, subject: 'Someone has sent an RSVP!'
  end

end
