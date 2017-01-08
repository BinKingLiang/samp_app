Rails.application.routes.draw do
  get 'users/new'

  get '/home', to: 'static_pages#home'

  get '/hello', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/connect', to: 'static_pages#connect'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
