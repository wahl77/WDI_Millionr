# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.destroy_all
Answer.destroy_all

a = Question.create(query:"What is the capital of France")
%w(Paris Washington Panama London).each do |answer|
  b = Answer.create(string: answer)
  if answer == "Paris"
    b.is_correct_answer = true
  end
  a.answers << b
end

a = Question.create(query:"What is the capital of UK")
%w(Paris Washington Panama London).each do |answer|
  b = Answer.create(string: answer)
  if answer == "London"
    b.is_correct_answer = true
  end
  a.answers << b
end

a = Question.create(query:"What is the capital of Japan")
%w(Paris Washington Panama Tokyo).each do |answer|
  b = Answer.create(string: answer)
  if answer == "Tokyo"
    b.is_correct_answer = true
  end
  a.answers << b
end
