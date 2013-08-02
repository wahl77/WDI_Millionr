class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :is_correct_answer, :string
  has_one :image

  def is_correct?
    return is_correct_answer
  end
end
