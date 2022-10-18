Rails.application.routes.draw do
 
  get 'tasks', to:'tasks#index'
  resources :tasks, except: [:index]
  get 'users', to:'users#index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'signup', to: 'users#new'
  resources :users, except: [:new ]
  
  delete 'logout', to: 'sessions#destroy'
  get 'logout', to: 'sessions#destroy'

  resources :categories
  get 'categories', to: 'categories#new'
  namespace :api do
    namespace :v1 do
      resources :tasks, only: [:index, :show, :create, :destroy, :update]
      resources :categories, only: [:index, :show, :create, :destroy, :update]
      resources :sessions
    end
  end

end

