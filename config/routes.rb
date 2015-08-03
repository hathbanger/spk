Rails.application.routes.draw do
  resources :locations

  get 'welcome/index'
  get 'users/list'
  resources :spots
  devise_for :users 
  resources :users, only: [:show, :list]
  resources :tricks do
  	member do
  		get "like", to: "tricks#upvote"
  		get "dislike", to: "tricks#downvote"
  	end
  	resources :comments
  end

  authenticated :user do
    root 'tricks#index', as: "authenticated_root"
  end

  root 'welcome#index'
end
