class Question < ActiveRecord::Base
  attr_accessible :query
  has_many :answers

  validates :query,
    presence: true


  def answer
    ansers.where("is_correct_answer = ?", true).first
  end

end
