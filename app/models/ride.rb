class Ride
    attr_accessor :distance, :passenger, :driver

    @@all = [] 

    def initialize(distance, passenger, driver)
        @distance = distance
        @passenger = passenger 
        @driver = driver
        save
    end

    def self.all 
        @@all 
    end

    def save 
        @@all << self 
    end 

    def self.average_distance 
        ride_distance = 0.0
        self.all.each do |ride|
            ride_distance += ride.distance 
        end
        ride_distance/self.all.count 
    end
end