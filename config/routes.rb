Rails.application.routes.draw do
  get 'home/about', to: 'homes#about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :books, except: :new
  resources :users, only: [:index,:show, :edit, :update]
end
