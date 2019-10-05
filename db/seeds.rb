# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
	)
end

puts "three topics created"

10.times do |blog|
	Blog.create!(
		title: "my blog post #{blog}",
		body: "hey babay",
		topic_id: Topic.last.id
		)
end

puts"10 blog posts created"

5.times do |skill|
	Skill.create(
		title: "Rails #{skill}",
		percent_utilized: 15
		)
end

puts"5 skill posts created"

8.times do |portfolio|
	Portfolio.create(
		title: "Rails #{portfolio}",
		subtitle: "Ruby in rails",
		body: "hey this is me anshiya",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
		)
end

1.times do |portfolio|
	Portfolio.create(
		title: "Rails #{portfolio}",
		subtitle: "Angular",
		body: "hey this is me anshiya",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
		)
end

puts"9 portfolios posts created"

3.times do|technology|
	Technology.create(name: "Technology#{technology}",
		portfolio_id: Portfolio.last.id)
end
puts "Three technologies created"	