class Person < ActiveRecord::Base
  has_many :parties, :through => :participation
end
