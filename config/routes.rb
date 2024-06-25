Rails.application.routes.draw do
  devise_for :users
  root 'posts#index', as: 'home'
  get "up" => "rails/health#show", as: :rails_health_check
  get'about' => 'pages#about'
  resources :posts do
    resources :comments
  end
  # Defines the root path route ("/")
  # root "posts#index"

end
