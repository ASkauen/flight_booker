Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'flights', to: 'flights#index'
  resource :bookings, only: [:new, :create, :show]
  root 'flights#index'
end
