Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "cocktails#index"
  root to: 'pages#home'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
  resources :reviews, only: [:destroy]
end
