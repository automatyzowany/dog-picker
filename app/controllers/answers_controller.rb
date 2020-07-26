# frozen_string_literal: true

class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      render json: @answer, status: :created, location: @answer
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:value)
  end
end
