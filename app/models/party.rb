class Party < ActiveRecord::Base
  has_many :people
  #attr_accessible :name
  #
  def add_person(person)
    @person = Person.find(person.id)
    existing_people = self.people.all
    unique_people = people.reject { |person| existing_people.include?(person) }

    self.people << person
  end
end
