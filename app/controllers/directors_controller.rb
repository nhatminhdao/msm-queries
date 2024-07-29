class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/index" })
  end

  def show
    director_id = params.fetch("director_id")

    matching_records = Director.where({ :id => director_id})

    @the_director = matching_records.first

    render({ :template => "director_templates/show"})
  end

  def youngest
    @youngest_director= Director.all.maximum(:dob).first
    
    render({ :template => "director_templates/youngest" })
  end

  def oldest
    render({ :template => "director_templates/oldest" })
  end

end
