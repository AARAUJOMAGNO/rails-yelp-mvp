Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :restaurants, only: :index
  end

  resources :reviews, only: %i[show edit update destroy]


  resources :restaurants do
    resources :reviews, only: %i[new create index]
  end
    # get 'review', on: :member

  root to: 'restaurants#index'
end
