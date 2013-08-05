class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :is_correct_answer, :string
  has_one :image

  def is_correct?
    return is_correct_answer
  end

  def correct_answer_id
    if self.is_correct?
      return self.id
    else
      self.question.answers.each do |answer|
        return answer.id if answer.is_correct_answer
      end
    end
  end

end
