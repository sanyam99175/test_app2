Rails.application.routes.draw do
  resources :paymethods
  resources :profiles
  resources :users
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :profiles 
 end

 resources :users do
  resources :paymethods
end
  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
end
