# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a = Question.create(query:"What is the capital of France")
%w(Paris Washington Panama London).each do |answer|
  b = Answer.create(string: answer)
  if answer == "Paris"
    b.is_correct_answer = true
  end
  a.answers << b
end
