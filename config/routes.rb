Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
    resources :phones do
      resources :buys, only: [:new, :create]
    end
    resources :buys, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
