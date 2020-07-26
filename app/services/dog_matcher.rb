# frozen_string_literal: true

# this class will output the dog list with percent of match
class DogMatcher
  def initialize(poll, dogs)
    @poll = poll
    @dogs = dogs
  end

  def call
    dog_array = []
    @dogs.each do |dog|
      poll_result = answers_array(dog)
      dog_array << { "#{dog.id}": poll_result_percentage(poll_result) }
    end
    dog_array
  end

  private

  def answers_array(dog)
    poll_result = []
    i = 1
    dog.answers.each do |a|
      @poll[i.to_s] == a.question_id ? poll_result << 1 : poll_result << 0
      i += 1
    end
    poll_result
  end

  def poll_result_percentage(poll_result)
    poll_result.count == 3 ? poll_result.sum / 3.0 * 100 : 0
  end
end
