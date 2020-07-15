Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { registrations: 'registrations', sessions: "sessions" }
  root to: "home#index"
  get '/check-token', to: 'home#check_token', as: 'check_token'
end
