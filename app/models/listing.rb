class Listing
    attr_accessor :city

    @@all = []

    def initialize(city)
        @city = city 
        @@all << self
    end

    def self.all 
        @@all 
    end 

    def trips
        Trip.all.select {|trip| trip.listing ==  self} 
    end

    def guests
        self.trips.map{|trip| trip.guest}
    end 

    def trip_count
        self.trips.count 
    end

    def self.find_all_by_city(city)
        self.all.select {|listing| listing.city == city}
    end

    def self.most_popular
       most_trips = self.all[0]
        self.all.each do |listing| 
            if listing.trip_count > most_trips.trip_count 
                most_trips = listing
            end
        end 
        most_trips 
    end 

end