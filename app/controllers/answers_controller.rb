class AnswersController < ApplicationController
  def index
    @answers = Answer.all

    render json: @answers
  end

  def poll_create
    poll = JSON.parse request.body.read.gsub('=>', ':')
    @dogs = Dog.all
    Poll.create!(answers: poll)
    @matches = DogMatcher.new(poll, @dogs).call

    render json: @matches
  end
end
