Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :create, :destroy, :update]
  resources :job_postings, only: [:index, :create, :update]
  resources :applications, only: [:index, :create, :update]
  post '/login', to: 'auth#create'
  get '/decode_token', to: 'users#profile'
end
