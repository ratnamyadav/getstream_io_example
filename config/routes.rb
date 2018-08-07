Rails.application.routes.draw do
  devise_for :users
  root to: 'feeds#index'
  get '/me' => 'feeds#user', as: :profile
  resources :deals, only: %i[create new index] do
    post '/like' => 'deals#like', as: :like
  end
  resources :follows, only: %i[create destroy]
  resources :likes, only: %i[create destroy]
  resources :users, only: :index do
    post '/follow' => 'users#follow', as: :follow
  end
end
