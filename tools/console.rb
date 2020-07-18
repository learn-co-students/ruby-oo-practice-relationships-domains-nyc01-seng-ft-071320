require_relative '../config/environment.rb'
require_relative '../app/models/guest.rb'
require_relative '../app/models/listing.rb'
require_relative '../app/models/trip.rb'

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

Pry.start
