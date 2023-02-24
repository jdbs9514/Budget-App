Rails.application.routes.draw do
  devise_for :users
  resources :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  resources :categories do
    resources :payments, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end
end
