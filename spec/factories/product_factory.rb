FactoryGirl.define do
	factory :product do
		name Faker::Name.name
		description Faker::Lorem.paragraph(3)
		price 100
	end
end