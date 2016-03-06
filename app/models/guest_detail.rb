class GuestDetail < ActiveRecord::Base

  validates :attending, presence: true
  validates :guest_1_name, presence: true
  validates :children, numericality: { allow_blank: true, only_integer: true, greater_than: 0 }, presence: false

  validate :validate_email_or_phone_present

  def validate_email_or_phone_present
    errors.add(:base, "Either phone or email is required") unless phone.present? || email.present?
  end

end
