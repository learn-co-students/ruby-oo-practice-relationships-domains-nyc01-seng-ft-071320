class Listing
    @@all = []
    def guests
    end
    attr_accessor :city, :type
    def initialize(city, type)
        @city = city
        @type = type
        @@all << self
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self   
        end
    end

    def guests
        trips.map do |trip|
            trip.guest
        end
    end

    def trip_count
        trips.count
    end


    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        self.all.max_by do |trip|
            trip.trip_count
        end
    end
end