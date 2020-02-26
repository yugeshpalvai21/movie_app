Rails.application.routes.draw do
  root to: 'movies#index'
  resources :movies
  namespace :v1 do
    get '/movies', to: 'users#all_movies', as: 'all_movies'
    get '/movies/:movie', to: 'users#movie_details', as: 'movie_details'
    get '/:user/movies', to: 'users#favorite_movies', as: 'user_movies'
    get '/:user/movies/:movie/add', to: 'users#add_favorite', as: 'add_favorite'
    get '/:user/movies/:movie/remove', to: 'users#remove_favorite', as: 'remove_favorite'
  end
end
