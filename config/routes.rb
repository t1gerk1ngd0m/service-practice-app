Rails.application.routes.draw do
  devise_for :users
  resources :bank_accounts, only: %i(index new create edit update)
  root to: 'bank_accounts#index'
end
