Rails.application.routes.draw do
  devise_for :admins
  root to: 'movies#index'
  resources :movies
  namespace :v1 do
    get '/movies', to: 'users#all_movies', as: 'all_movies'
    get '/movies/:movie', to: 'users#movie_details', as: 'movie_details'
    get '/:user/movies', to: 'users#favorite_movies', as: 'user_movies'
    get '/:user/movies/:movie/add', to: 'users#add_favorite', as: 'add_favorite'
    get '/:user/movies/:movie/remove', to: 'users#remove_favorite', as: 'remove_favorite'
  end
  
  
  get 'admin/movies', to: 'admins#movies'
  get 'admin/users', to: 'admins#users'
  get 'admin/:username', to: 'admins#user_details', as: 'user_details'
  delete 'admin/:username/destroy', to: 'admins#destroy_user', as: 'admin_destroy_user'
end
