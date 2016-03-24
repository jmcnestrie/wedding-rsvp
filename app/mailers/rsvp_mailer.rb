class RsvpMailer < ApplicationMailer

  def notification

    recipients = ['elkdanger@gmail.com', 'fiona.m.mcdonald@gmail.com']

    mail to: recipients, subject: 'Someone has sent an RSVP!'
  end

end
