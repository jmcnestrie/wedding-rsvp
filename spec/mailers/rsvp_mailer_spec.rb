require "rails_helper"

RSpec.describe RsvpMailer, type: :mailer do

  describe "the notification mailer" do

    let (:mail) { RsvpMailer.notification }

    it 'sets the correct subject' do
      expect(mail.subject).to eql 'Someone has sent an RSVP!'
    end

    it 'sends it to a recipient' do
      expect(mail.to).to include 'elkdanger@gmail.com'
    end

  end

end
