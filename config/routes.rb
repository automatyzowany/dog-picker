Rails.application.routes.draw do
  resources :dogs
  post 'authenticate', to: 'authentication#authenticate'
end
