Rails.application.routes.draw do
  root 'homes#index'
  get '/login', to: 'sessions#new', as: 'login'
  get '/sign-up', to: 'users#new', as: 'sign_up'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/events/new', to: 'events#new', as: 'event_new'
  get '/events', to: 'events#index', as: 'event_index'


  resources :users, only: [:create, :show]
  resources :sessions, only: [:create]
  resources :events, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
