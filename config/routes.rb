Rails.application.routes.draw do
  resource :session, only: [:create, :new, :destroy]
  resources :users, only: [:new, :create]
  resources :projects, only: [:index, :create, :show] do
    resources :notecards, except: [:destroy]
  end

  root "projects#index"
  get "/archives" => "notecards#index", as: :archives
end
