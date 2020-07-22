class AddDogReferencesToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_reference :answers, :dog, null: false, foreign_key: true
  end
end
