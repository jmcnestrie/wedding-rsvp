require 'rails_helper'

describe GuestDetail, type: :model do

  it { should validate_presence_of :attending }

  it { should validate_presence_of :guest_1_name }

  it { should_not validate_presence_of :guest_2_name }

  it { should_not validate_presence_of :children }
  it { should validate_numericality_of(:children).only_integer }
  it { should validate_numericality_of(:children).is_greater_than(0) }


  it { should_not validate_presence_of :dietary_reqs }
  it { should_not validate_presence_of :comments }

  describe "validate_email_or_phone_present" do

    it "should not raise an error when email is provided" do
      guest_detail = GuestDetail.new(email: "test@test.com")
      guest_detail.valid?
      guest_detail.errors[:base].should be_empty
    end

    it "should not raise an error when phone is provided" do
      guest_detail = GuestDetail.new(phone: "01615655566")
      guest_detail.valid?
      guest_detail.errors[:base].should be_empty
    end

    it "should raise an error when neither phone or email is provided" do
      guest_detail = GuestDetail.new
      guest_detail.valid?
      guest_detail.errors[:base].should eq ["Either phone or email is required"]
    end

  end

end
