class V1::UsersController < ApplicationController
  before_action :set_user, only: [:favorite_movies, :add_favorite, :remove_favorite]
  before_action :set_movie, only: [:movie_details, :add_favorite, :remove_favorite]

  def all_movies
    render json: Movie.all
  end

  def movie_details
    render json: @movie
  end

  def favorite_movies
    render json: @user.movies
  end

  def add_favorite
    @movie.favorited += 1
    @movie.save
    render json: @user.movies << @movie
  end

  def remove_favorite
    @movie.favorited -= 1
    @movie.save
    render json: @user.movies.destroy(@movie)
  end

  private

  def set_user
    @user = User.where(username: params[:user]).first_or_create
  end

  def set_movie
    @movie = Movie.find(params[:movie])
  end
end