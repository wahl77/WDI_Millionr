# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    question nil
    string "MyString"
    is_correct_answer false
  end
end
