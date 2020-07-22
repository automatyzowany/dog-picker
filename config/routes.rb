Rails.application.routes.draw do
  resources :questions
  resources :dogs
  post 'authenticate', to: 'authentication#authenticate'
end
