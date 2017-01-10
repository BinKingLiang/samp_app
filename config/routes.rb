Rails.application.routes.draw do
  

  root 'static_pages#home'
  get  '/signup',  to: 'users#new'
  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'
  get '/conntact', to: 'static_pages#conntact'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  

  resources :users do
      member do
        get :followers
        get :following
      end
    end
    resources :account_activations, only: [:edit]
    resources :passwords, except: [:destroy]
    resources :microposts, only: [:create, :destroy]
    resources :relationships, only: [:create, :destroy]  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
