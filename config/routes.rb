Rails.application.routes.draw do
  root 'pages#landing'

  get '/feed', to: 'pages#feed', as: 'pages_feed'

  devise_for :users, controllers: { registrations: 'users/registrations' }

  scope 'admin' do
    resources :users
  end

  resources :recipes do
    resources :comments
  end

  resources :recipe do
    resources :likes
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
