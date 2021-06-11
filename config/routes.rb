Rails.application.routes.draw do
  root to: 'users#new'
  resources :users, only: %i[new create edit update]
end
