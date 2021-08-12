Rails.application.routes.draw do
  root to: 'movies#index'
  resources :lists, only: [:new, :create, :index, :show ] do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :bookmarks, only: [ :destroy]
end
