class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: 'New Movie Successfully Created..'
    else
      render 'new'
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :director, :main_star, :description, genre_ids: [])
  end
end
