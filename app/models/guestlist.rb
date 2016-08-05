class Guestlist < ActiveRecord::Base
  validates :title, presence: true
  has_many :parties
  has_many :people, through: :parties
end
