Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
  root 'rooms#show'
  # get 'rooms/show'
  resources :rooms
  resources :messages, only: :create
end
