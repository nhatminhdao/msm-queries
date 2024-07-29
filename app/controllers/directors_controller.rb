class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/index" })
  end

  def show
    director_id = params.fetch("director_id")

    matching_records = Director.where({ :id => director_id})

    @the_director = matching_records.first

    @matching_movies = Movie.where({ :director_id => @the_director.id})

    render({ :template => "director_templates/show_details"})
  end
end
