Rails.application.routes.draw do
  resource :session, only: [:create, :new, :destroy]
  resources :users, only: [:new, :create]
  resources :projects, only: [:index, :create, :show]
  resources :notecards, only: [:show]

  root "projects#index"
  get "/writing" => "notecards#new", as: :writing
end
