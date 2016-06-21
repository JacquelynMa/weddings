class Guestlist < ActiveRecord::Base
  validates :title, presence: true
  has_many :guests
end
