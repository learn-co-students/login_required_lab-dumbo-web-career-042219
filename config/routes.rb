Rails.application.routes.draw do
  resources :sessions

  get '/secrets', to: 'secrets#show'
  get 'sessions', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
