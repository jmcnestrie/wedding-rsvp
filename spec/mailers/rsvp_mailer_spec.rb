require "rails_helper"

RSpec.describe RsvpMailer, type: :mailer do

  describe "the notification mailer" do

    let (:rsvp) { Rsvp.new name: 'Steve' }
    let (:mail) { RsvpMailer.notification rsvp }

    it 'sets the correct subject' do
      expect(mail.subject).to eql 'Steve has sent their RSVP!'
    end

    it 'sends it to a recipient' do
      expect(mail.to).to include 'elkdanger@gmail.com'
    end

  end

end
