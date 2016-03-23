# Preview all emails at http://localhost:3000/rails/mailers/rsvp_mailer
class RsvpMailerPreview < ActionMailer::Preview
  def notification_preview
    RsvpMailer.notification()
  end
end
