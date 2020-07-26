require 'rails_helper'

RSpec.describe AnswersController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/answers').to route_to('answers#index')
    end

    it 'routes to #poll_create' do
      expect(post: '/answers/create'). to route_to('answers#poll_create')
    end
  end
end
