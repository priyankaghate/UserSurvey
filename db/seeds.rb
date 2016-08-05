# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
surveys=["Personal", "Family", "Social"]
questions=[
	["short", "Who is your role model"],
	["long", "If you could have any job, what would it be and why"],
	["long", "What’s your fondest childhood memory"],
	["short", "Which is your favorite movie"],
	["short", "What is your favorite colour"],
	["Numeric", "What is your age"]
]

surveys.each do |type|
	Survey.create(survey_type: type)
end

@survey=Survey.find_by_id(1)

questions.each do |type, text|
	@survey.questions.create(q_type: type, q_text: text)
end