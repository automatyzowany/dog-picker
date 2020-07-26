class Answer < ApplicationRecord
  belongs_to :dogs
  belongs_to :questions
end
