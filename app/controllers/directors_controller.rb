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
    @latest_dob = Director.all.maximum(:dob)

    @the_youngest_director = Director.where({ :dob => @latest_dob}).first
    
    render({ :template => "director_templates/youngest" })
  end

  def eldest
    @eldest_dob = Director.all.minimum(:dob)

    @the_eldest_director = Director.where({ :dob => @eldest_dob}).first
    
    render({ :template => "director_templates/eldest" })
  end

end
