Rails.application.routes.draw do
  #get 'home/index'
  resources :quote_categories
  resources :categories
  resources :quotes
  resources :authors
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/about', to: 'about#index'
  get 'search', to: 'search#index'
  get 'login', to: 'sessions#new' 
  post 'login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: :logout #Chat GPT Solution
  get '/admin', to: 'home#aindex'
  get '/userhome', to: 'home#uindex' 
  get '/your-quotes', to: 'home#uquotes'
  get '/new-quote', to: 'quote#new'
  # Defines the root path route ("/")
  # root "articles#index"
end
