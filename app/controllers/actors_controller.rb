class ActorsController < ApplicationController
  def index
    render({ :template => "/actor_templates/index" })
  end

  def show
    actor_id = params.fetch("actor_id")

    matching_records = Actor.where({ :id => actor_id})

    @the_actor = matching_records.first

    @matching_characters = Character.where({ :actor_id => @the_actor.id})

    render({ :template => "actor_templates/show"})
  end
end
