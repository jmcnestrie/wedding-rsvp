require 'rails_helper'

describe Rsvp, :type => :model do

  describe 'validation' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :phone }
    it { should validate_presence_of :events }
    it { should validate_presence_of :guests }
  end

end
