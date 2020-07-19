class Passenger
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all 
        @@all 
    end 

    def save
        @@all << self
    end 

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end 

    def drivers
        self.rides.map{|ride| ride.driver}
    end

    def total_distance
        miles = 0.0
        self.rides.each do |ride|
            miles += ride.distance
        end
        miles
    end 

    def self.premium_members
        self.all.select{|passenger| passenger.total_distance > 100}
    end
end