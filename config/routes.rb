Rails.application.routes.draw do
  resource :session, only: [:create, :new, :destroy]
  resources :users, only: [:new, :create]
  resources :projects, only: [:index, :create]
  resources :prompts, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
  end

  root "projects#index"
end
