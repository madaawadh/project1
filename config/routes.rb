Rails.application.routes.draw do

  devise_for :users
  get 'users/index'
  get 'users/show'
  get 'pages/home'
  root "pages#home"
  resources :users, only: [:show]
  resources :tags
  # get 'tags/show'
  resources :meetings
  # get 'meetings/show'
  # get 'meetings/new'
  # get 'meetings/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
