FactoryGirl.define do
	factory :product do
		name Faker::Name.name
		description Faker::Lorem.paragraph(rand(1..4))
		price rand(100)
	end
end