class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  
  def index
    @movies = Movie.all
  end

  def show
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

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to movies_path, notice: 'Successfully Updated..'
    else
      render 'edit'
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path, notice: 'movie deleted successfully..'
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:name, :year, :director, :main_star, :description, genre_ids: [])
  end
end
