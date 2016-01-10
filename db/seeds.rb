# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new({first_name: 'scott', email: 'scottsilveus@gmail.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', user_type: 'artist'})
user.skip_confirmation!
user.save!

crews = Crew.create([{name: 'Scotts Crew'}])

