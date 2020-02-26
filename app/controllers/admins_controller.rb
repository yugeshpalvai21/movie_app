class AdminsController < ApplicationController
  before_action :authenticate_admin!
  before_action :autherize_admin!

  def movies
    @movies = Movie.all
  end

  def users
    @users = User.all
  end

  def user_details
    @user = User.find_by_username(params[:username])
  end

  def destroy_user
    @user = User.find_by_username(params[:username])
    @user.destroy
    redirect_to admin_users_path, notice: 'user deleted successfully'
  end

  private

  def autherize_admin!
    unless current_admin.admin?
      redirect_to root_path, notice: 'Not Autherized To Access Admin Area'
    end
  end
end