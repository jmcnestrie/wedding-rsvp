class Rsvp < ActiveRecord::Base

  validates :name, presence: true
  validates :phone, presence: true
  validates :events, presence: true
  validates :guests, presence: true

end
