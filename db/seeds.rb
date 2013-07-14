# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(
	name: 'Queen U',
	description: 'Pretty good university',
	price: 100000
)

Product.create(
	name: 'Western U',
	description: 'Pretty good university',
	price: 1000000
)