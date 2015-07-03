# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.create!(
  :name  => "The old church on the coast of White sea",
  :tables_per_timeslot => "Sergey Ershov",
  :address => "123 King West",
  :phone_number => "403 462 1234",
  :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi vero reiciendis aliquam veritatis sapiente, debitis libero magni autem dolorem quaerat exercitationem iusto sit earum voluptates obcaecati alias dolore tempore molestias?",
  :picture => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
)

Restaurant.create!(
  :name  => "The old church on the coast of White sea",
  :tables_per_timeslot => "Sergey Ershov",
  :address => "127 Bloor West",
  :phone_number => "403 462 1234",
  :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis reprehenderit necessitatibus vel sapiente, laborum nisi iste, architecto repellendus natus quos quia temporibus maxime at culpa provident, dolore autem vitae illo.",
  :picture => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
)

Restaurant.create!(
  :name  => "The old church on the coast of White sea",
  :tables_per_timeslot => "Sergey Ershov",
  :address => "129 Yorkville Road",
  :phone_number => "403 462 1234",
  :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias neque natus sunt numquam nostrum, doloremque blanditiis facere excepturi asperiores sint similique ea eligendi sed quaerat, quo, libero omnis id dolores!",
  :picture => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
)