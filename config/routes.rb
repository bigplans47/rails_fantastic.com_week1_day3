Rails.application.routes.draw do
  devise_for :users
  root :to => 'artists#index'
  resources :artists do
    resources :albums
  end
end
