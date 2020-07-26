Rails.application.routes.draw do
  post '/authenticate' => 'authentication#authenticate'

  get '/answers' => 'answers#index' # get all the answers
  post '/answers/create' => 'answers#poll_create'
  get '/questions' => 'questions#index' # get all questions you wanna ask the client
  get '/dogs' => 'dogs#index' # get all the available dogs
end
