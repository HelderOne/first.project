Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'reserve' => 'pages#reserve'
  
  resources :posts
end
