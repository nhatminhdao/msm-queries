class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/index" })
  end

  def show
    director_id = params.fetch("director_id")


    matching_records = Director.where({ :id => director_id})

    @the_director = matching_records.first

    render({ :template => "director_templates/show_details"})
  end
end
