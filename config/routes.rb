Rails.application.routes.draw do
  root 'pages#landing'
  get 'search', to: "search#index"
  get '/likes', to: 'recipes#likes', as: 'liked_recipes'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  scope 'admin' do
    resources :users
  end

  resources :recipes do
    resources :comments, only: %i[create destroy]
  end

  resources :recipe do
    resources :likes, only: %i[create destroy]
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
