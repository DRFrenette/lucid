Rails.application.routes.draw do
  resource :session, only: [:create, :new, :destroy]
  resources :users, only: [:new, :create]
  resources :projects, only: [:index, :create, :show, :destroy] do
    resources :notecards, except: [:destroy]
  resources :prompts, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
    resource :upvote, only: [:create]
    resource :downvote, only: [:create]
  end
  resources :categories, except: [:index]
  root "projects#index"
end
