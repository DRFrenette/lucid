Rails.application.routes.draw do
  resource :session, only: [:create, :new, :destroy]
  resources :users, only: [:new, :create]
  resources :projects, only: [:index, :create, :show] do
    resources :notecards, only: [:show, :index, :edit, :create, :new]
  end

  root "projects#index"
  get "/archives" => "notecards#index", as: :archives
end
