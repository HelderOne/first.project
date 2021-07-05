Rails.application.routes.draw do

  devise_for :users
  root 'posts#home'

  get 'about' => 'pages#about'

  resources :posts
  resources :tags, only: [:show]
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
