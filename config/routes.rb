Rails.application.routes.draw do
  get 'translators/index'
  get 'translators/show'
  get 'translators/new'
  get 'translators/create'
  get 'translators/edit'
  get 'translators/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :translators, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:edit, :destroy]

  get '/profile', to: 'dashboards#profile'
end
