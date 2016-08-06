class ParticipationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @participation = self
    @parties = Party.all
    @person = Person.find(params[:person_id])
  end

  def create
    @person = Person.find(params[:person_id])
    @party = Party.find(params[:party_id])

    existing_people = @party.people.all
    @party.people << @person unless existing_people.include?(@person)
  end
end
