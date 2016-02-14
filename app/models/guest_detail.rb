class GuestDetail < ActiveRecord::Base

  validates :attending, presence: true
  validates :guest_1_name, presence: true

end
