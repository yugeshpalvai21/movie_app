class AdminsController < ApplicationController
  before_action :authenticate_admin!
  before_action :autherize_admin!

  def movies
    @movies = Movie.all
  end

  def users
    @users = User.all
  end

  private

  def autherize_admin!
    unless current_admin.admin?
      redirect_to root_path, notice: 'Not Autherized To Access Admin Area'
    end
  end
end