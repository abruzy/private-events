Rails.application.routes.draw do
  root 'homes#index'
  get '/sign-up', to: 'users#new', as: 'sign_up'
  get '/profile',  to: 'users#profile', as: 'profile'
  get '/profile/my-events', to: 'users#my_events', as: 'my_events'
  get '/profile/registered-events', to: 'users#registered_events', as: 'registered_events'

  get '/login', to: 'sessions#new', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  
  get '/events/new', to: 'events#new', as: 'event_new'
  get '/events', to: 'events#index', as: 'event_index'
  get '/events/edit/:id', to: 'events#edit', as: 'event_edit'
  patch '/events/:id', to: 'events#update', as: 'event_update'
  get '/events/:id/attendees' => 'events#attendees', as: 'attendees'
  get '/attend/:id' => 'events#attend_event', as: 'attend'
  

  resources :users, only: [:create, :show]
  resources :sessions, only: [:create]
  resources :events, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
