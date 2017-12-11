Rails.application.routes.draw do

  resources :books

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  get 'users' ,to: 'users#show'
end
