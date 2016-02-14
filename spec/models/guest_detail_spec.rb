require 'rails_helper'

describe GuestDetail, type: :model do

  it { should validate_presence_of :attending }
  it { should validate_presence_of :guest_1_name }

end
