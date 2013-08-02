class Question < ActiveRecord::Base
  attr_accessible :query
  has_many :answers
end
