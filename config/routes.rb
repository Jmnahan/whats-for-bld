Rails.application.routes.draw do
  root 'pages#landing'
  devise_for :users

  get '/feed', to: 'pages#feed', as: 'pages_feed'

  resources :recipes do
    resources :comments
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
