Rails.application.routes.draw do
  resource :session, only: [:create, :new, :destroy]
  resources :users, only: [:new, :create]
  resources :projects, only: [:index, :create, :show] do
    resources :notecards, except: [:destroy]
  end
  resources :prompts, only: [:index, :new, :create]

  root "projects#index"
end
