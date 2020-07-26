Rails.application.routes.draw do
  get 'answers' => 'answers#index' # get all the answers
  get '/questions' => 'questions#index' # get all questions you wanna ask the client
  get '/dogs' => 'dogs#index' # get all the available dogs
  post 'authenticate', to: 'authentication#authenticate'
end
