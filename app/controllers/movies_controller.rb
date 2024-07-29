class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/index" })
  end
  
  def show
    movie_id = params.fetch("movie_id")

    matching_records = Movie.where({ :id => movie_id})

    @the_movie = matching_records.first

    render({ :template => "movie_templates/show"})
  end
end
