class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :is_correct_answer, :string
  has_one :image
end
