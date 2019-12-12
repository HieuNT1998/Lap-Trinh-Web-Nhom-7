Rails.application.routes.draw do


  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :post_comments
  resources :posts

  resources :hiraganas do
    resources :tests
  end
  devise_for :users
  resources :users
  resources :tests
  resources :stories

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homepage#home'
  get 'dict' => 'homepage#dict'
  get 'alphabet' => 'homepage#alphabet'
  get 'stories' => 'stories#index'
  get 'editst' => 'stories#edit'
  get 'songs' => 'homepage#songs'
  get 'infor' => 'users#show'
  delete 'stories/:id' => 'stories#destroy'

end
