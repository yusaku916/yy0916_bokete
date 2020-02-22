Rails.application.routes.draw do
  # get 'users/show'
  get 'posts/index'
  get 'posts/new' => 'posts#new'
  devise_for :users
  get 'home/index'
  get 'home/show'
  # get 'posts/show' => "posts#show"
  post 'posts'  =>  'posts#create'
  resources :users, only: [:show]
  resources :posts, only: [:index, :show, :create] do
    resources :answers, only: [:create]
  end
  get 'users/sign_out' => 'users#sign_out'
  root to: "posts#index"

  # devise_for :users, :controllers => {
  #   :registrations => 'users/registrations',
  #   :sessions => 'users/sessions'   
  # } 

  # devise_scope :user do
  #   get "sign_in", :to => "users/sessions#new"
  #   get "sign_out", :to => "users/sessions#destroy" 
  # end
end
