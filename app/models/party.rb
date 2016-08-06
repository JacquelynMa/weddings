class Party < ActiveRecord::Base
  has_many :people, :through => :participation
end
