# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    question 
    string "Answer A"
    is_correct_answer false
  end
end
