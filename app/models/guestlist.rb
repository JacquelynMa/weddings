class Guestlist < ActiveRecord::Base
  validates :title, presence: true
end
