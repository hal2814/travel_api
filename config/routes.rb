Rails.application.routes.draw do
  resources :destinations do
    resources :reviews
  end
  resources :users
end
