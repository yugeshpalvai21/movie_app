Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'
  resources :movies, except: [:index, :show]
  
  #API Requests
  namespace :v1 do
    get '/movies', to: 'users#all_movies'
    get '/movies/:movie', to: 'users#movie_details'
    get '/:user/movies', to: 'users#favorite_movies'
    get '/:user/movies/:movie/add', to: 'users#add_favorite'
    get '/:user/movies/:movie/remove', to: 'users#remove_favorite'
  end
  
  #Admin Access Pages
  get 'admin', to: 'admins#index', as: 'admin_home'
  get 'admin/movies', to: 'admins#movies', as: 'admin_movies'
  get 'admin/users', to: 'admins#users', as: 'admin_users'
  get 'admin/:username', to: 'admins#user_details', as: 'user_details'
  delete 'admin/:username/destroy', to: 'admins#destroy_user', as: 'admin_destroy_user'

end
