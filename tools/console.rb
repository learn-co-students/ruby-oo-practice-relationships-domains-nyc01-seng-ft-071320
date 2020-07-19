require_relative '../config/environment.rb'
require_relative '../app/models/guest.rb'
require_relative '../app/models/listing.rb'
require_relative '../app/models/trip.rb'
require_relative '../app/models/user.rb'
require_relative '../app/models/project.rb'
require_relative '../app/models/pledge.rb'

def reload
  load 'config/environment.rb'
end

#objects to test on
ryan_f = Guest.new("Ryan")
melissa = Guest.new("Melissa")
ryan_w = Guest.new("Ryan")
seattle = Listing.new("Seattle")
seattle2 = Listing.new("Seattle")
miami = Listing.new("Miami")
seattle_trip = Trip.new(seattle, ryan_f)
miami_trip = Trip.new(miami, melissa)
melissa_seattle_trip = Trip.new(seattle, melissa)



#tests I've done
ryan_f.trips
ryan_f.listings
Guest.pro_traveller
Guest.find_all_by_name("Ryan")
seattle.trips 
seattle.guests 
seattle.trip_count
Listing.find_all_by_city("Seattle")
Listing.most_popular 
Listing.find_all_by_city("Miami")

#tests and objects for bakery

#objects to test on
magnolia = Bakery.new("Magnolia Bakery")
cherry_pie = Dessert.new("Cherry Pie", magnolia)
cupcake = Dessert.new("Cupcake", magnolia)
cherry = Ingredient.new("Cherry", 30, cherry_pie)
cherry_mousse = Ingredient.new("Cherry Mousse", 200, cherry_pie)
icing_sugar = Ingredient.new("Icing Sugar", 210, cupcake)
brown_sugar = Ingredient.new("Brown Sugar", 190, cupcake)

#tests I've done
cherry.dessert
cherry.bakery
Ingredient.all
Ingredient.find_all_by_name("Cherry")
Ingredient.find_all_by_name("Sugar")

cherry_pie.ingredients
cupcake.ingredients
cherry_pie.bakery
cherry_pie.calories 
cupcake.calories 
Dessert.all

magnolia.desserts 
magnolia.ingredients 
magnolia.average_calories #Should equal 630
magnolia.shopping_list

#tests and objects for crowdfunding

#objects to test on
ryan = User.new("Ryan")
charlie = User.new("Charlie Day")
tom = User.new("Tom Cruise")
jim = User.new("Jim")
kitten_mittens = Project.new("Kitten Mittens", charlie, 1000)
pet_rock = Project.new("Pet Rock", ryan, 100)
scientology = Project.new("Scientology", jim, 1000)
charlie_rock_pledge = Pledge.new(pet_rock, charlie, 50)
tom_scientology_pledge = Pledge.new(scientology, tom, 1500)
ryan_pledge = Pledge.new(scientology, ryan, 100)
#tests
Pledge.projects 
Project.no_pledges 
pet_rock.pledge_amount 
Project.above_goal
Project.most_backers
User.highest_pledge
Pry.start
