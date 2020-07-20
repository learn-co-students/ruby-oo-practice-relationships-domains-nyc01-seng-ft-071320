require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

nyc_apt = Listing.new("NYC", "Apartment")
la_apt = Listing.new("L.A.", "Condo")
nyc_home = Listing.new("NYC", "House")
detroit_home = Listing.new("Detroit", "House")



david = Guest.new("David")
roy = Guest.new("Roy")
jordan = Guest.new("Jordan")
chelsea = Guest.new("Chelsea")
alyssa = Guest.new("Alyssa")
john = Guest.new("John")

trip1 = Trip.new(nyc_apt, david)
trip2 = Trip.new(detroit_home, jordan)
trip3 = Trip.new(nyc_apt, roy)
trip4 = Trip.new(la_apt, chelsea)
trip5 = Trip.new(la_apt, alyssa)
trip6 = Trip.new(la_apt, david)

flour = Ingredient.new("Flour", 10.5)
chocolate = Ingredient.new("Chocolate", 21.2)
butter = Ingredient.new("Butter", 15.0)
egg = Ingredient.new("Egg", 10.2)
chocolate_sprinkles = Ingredient.new("Chocolate Sprinkles", 15.3)
milk = Ingredient.new("Milk", 53.0)
sugar = Ingredient.new("Sugar", 31.4)


cupcake = Dessert.new("Cupcake", [flour, chocolate, butter])
pancake = Dessert.new("Pancake", [flour, egg, butter])
cookie = Dessert.new("Cookie", [flour, butter, chocolate_sprinkles, sugar ])

davids = Bakery.new("Davids", [cupcake, pancake])
roys = Bakery.new("Roys", [cookie, cupcake])



Pry.start


