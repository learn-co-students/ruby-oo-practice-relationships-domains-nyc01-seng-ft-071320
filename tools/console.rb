require_relative '../config/environment.rb'
require_relative '../app/models/guest.rb'
require_relative '../app/models/listing.rb'
require_relative '../app/models/trip.rb'

require_relative '../app/models/user.rb'
require_relative '../app/models/project.rb'
require_relative '../app/models/pledge.rb'

require_relative '../app/models/driver.rb'
require_relative '../app/models/passenger.rb'
require_relative '../app/models/ride.rb'

require_relative '../app/models/actor.rb'
require_relative '../app/models/character.rb'
require_relative '../app/models/show.rb'
require_relative '../app/models/movie.rb'

def reload
  load 'config/environment.rb'
end

#objects to test on
# ryan_f = Guest.new("Ryan")
# melissa = Guest.new("Melissa")
# ryan_w = Guest.new("Ryan")
# seattle = Listing.new("Seattle")
# seattle2 = Listing.new("Seattle")
# miami = Listing.new("Miami")
# seattle_trip = Trip.new(seattle, ryan_f)
# miami_trip = Trip.new(miami, melissa)
# melissa_seattle_trip = Trip.new(seattle, melissa)



# #tests I've done
# ryan_f.trips
# ryan_f.listings
# Guest.pro_traveller
# Guest.find_all_by_name("Ryan")
# seattle.trips 
# seattle.guests 
# seattle.trip_count
# Listing.find_all_by_city("Seattle")
# Listing.most_popular 
# Listing.find_all_by_city("Miami")

# #tests and objects for bakery

# #objects to test on
# magnolia = Bakery.new("Magnolia Bakery")
# cherry_pie = Dessert.new("Cherry Pie", magnolia)
# cupcake = Dessert.new("Cupcake", magnolia)
# cherry = Ingredient.new("Cherry", 30, cherry_pie)
# cherry_mousse = Ingredient.new("Cherry Mousse", 200, cherry_pie)
# icing_sugar = Ingredient.new("Icing Sugar", 210, cupcake)
# brown_sugar = Ingredient.new("Brown Sugar", 190, cupcake)

# #tests I've done
# cherry.dessert
# cherry.bakery
# Ingredient.all
# Ingredient.find_all_by_name("Cherry")
# Ingredient.find_all_by_name("Sugar")

# cherry_pie.ingredients
# cupcake.ingredients
# cherry_pie.bakery
# cherry_pie.calories 
# cupcake.calories 
# Dessert.all

# magnolia.desserts 
# magnolia.ingredients 
# magnolia.average_calories #Should equal 630
# magnolia.shopping_list

# #tests and objects for crowdfunding

# #objects to test on
# ryan = User.new("Ryan")
# charlie = User.new("Charlie Day")
# tom = User.new("Tom Cruise")
# jim = User.new("Jim")
# kitten_mittens = Project.new("Kitten Mittens", charlie, 1000)
# pet_rock = Project.new("Pet Rock", ryan, 100)
# scientology = Project.new("Scientology", jim, 1000)
# charlie_rock_pledge = Pledge.new(pet_rock, charlie, 50)
# tom_scientology_pledge = Pledge.new(scientology, tom, 1500)
# ryan_pledge = Pledge.new(scientology, ryan, 100)
# ryan_pledge_2 = Pledge.new(kitten_mittens, ryan, 100)

#tests
# Pledge.projects 
# Project.no_pledges 
# pet_rock.pledge_amount 
# Project.above_goal
# Project.most_backers
# User.highest_pledge


#tests and objects for lyft

#objects to test on
# ryan = Passenger.new("Ryan")
# billy = Passenger.new("Billy")
# charlie = Passenger.new("Charlie")

# george = Driver.new("George")
# gina = Driver.new("Gina")

# ryan_cvs_george = Ride.new(3.1, ryan, george)
# billy_cvs_george = Ride.new(101.2, billy, george)
# charlie_cvs_gina = Ride.new(2.25, charlie, gina)
# ryan_starbucks_gina = Ride.new(5.2, ryan, gina)
# #tests
# billy_cvs_george.passenger 
# ryan_cvs_george.driver  
# Ride.average_distance 

# george.passengers
# george.rides
# Driver.all 
# Driver.mileage_cap(100.0)

# ryan.drivers 
# ryan.rides
# charlie.drivers 
# Passenger.all 
# ryan.total_distance 
# charlie.total_distance
# Passenger.premium_members 

tom_cruise = Actor.new("Tom Cruise")
tom_hardy = Actor.new("Tom Hardy")
timothee_chalamet = Actor.new("Timothee Chalamet")

malcolm = Character.new("Malcolm", timothee_chalamet)
king_duncan = Character.new("King Duncan", tom_hardy)
king_john = Character.new("King John", timothee_chalamet)
ethan_hunt = Character.new("Ethan Hunt", tom_cruise)


macbeth_movie = Movie.new("Macbeth")
king_john_movie = Movie.new("The King")

macbeth_show = Show.new("Macbeth")

malcolm_appearance_movie = Appearance.new(malcolm, macbeth_movie)
malcolm_appearance_show = Appearance.new(malcolm, macbeth_show)
king_duncan_appearance_movie = Appearance.new(king_duncan, macbeth_movie)

Actor.most_characters
malcolm.appearances
Character.most_appearances
macbeth_show.on_the_big_screen 
macbeth_movie.appearances
macbeth_movie.actors
Movie.most_actors


Pry.start