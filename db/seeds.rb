# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.create!(
  :name  => "Canoe",
  :address => "Toronto-Dominion Centre, 66 Wellington St W, Toronto, ON M5K 1H6",
  :phone_number => "(416) 364-0054",
  :description => "Critically acclaimed to be among Canada’s best restaurants, Canoe’s unique location high atop the TD Bank Tower affords a breathtaking view of the city. The design is clean and simple, yet absolutely stylish—a brilliant reflection of this country’s rich, raw environment.",
  :capacity => "215",
  :picture => "http://blog.weddingful.com/wp-content/uploads/2014/07/Canoe.jpg",
)

Restaurant.create!(
  :name  => "Origin Restaurant and Bar",
  :address => "107 King St East, Toronto, ON M5C 1G6",
  :phone_number => "(416) 603-8009",
  :description => "Located in the historic downtown Toronto neighbourhood of St. Lawrence, Origin Restaurant & Bar is a high energy global food bar that celebrates the diverse cuisines of the world.",
  :capacity => "150",
  :picture => "http://www.blogto.com/listings/restaurants/upload/2010/12/20101209-Origin-Bar.jpg",
)

Restaurant.create!(
  :name  => "Buca Italian",
  :address => "604 King St W, Toronto, ON M5V 1M6",
  :phone_number => "(416) 865-1600",
  :description => "Rustic Italian fare, including house made pastas & charcuterie, served in an upscale setting. A Beautiful main dining room with soaring high ceilings, exposed brick greets diners.",
  :capacity => "117",
  :picture => "http://www.thestar.com/content/dam/thestar/life/food_wine/2009/11/12/wait_staff_does_buca_no_service/buca.jpeg",
)

