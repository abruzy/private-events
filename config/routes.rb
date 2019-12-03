Rails.application.routes.draw do
  root 'homes#index'
  get 'login', to: 'sessions#new', as: 'login'
  get 'sign-up', to: 'users#new', as: 'sign_up'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users, only: [:create, :show]
  resources :sessions, only:[:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
