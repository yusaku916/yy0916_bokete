Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/show'
  get 'users/sign_out' => 'users#sign_out'
  root to: "home#index"

  # devise_for :users, :controllers => {
  #   :registrations => 'users/registrations',
  #   :sessions => 'users/sessions'   
  # } 

  # devise_scope :user do
  #   get "sign_in", :to => "users/sessions#new"
  #   get "sign_out", :to => "users/sessions#destroy" 
  # end
end
