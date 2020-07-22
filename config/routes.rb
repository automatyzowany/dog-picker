Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :dogs
  post 'authenticate', to: 'authentication#authenticate'
end
