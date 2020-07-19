class Driver
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
        Ride.all.select{|ride| ride.driver == self}
    end 

    def passengers
        self.rides.map{|ride| ride.passenger}
    end

    def miles_driven
        miles = 0.0
        self.rides.each do |ride|
            miles += ride.distance
        end
        miles
    end 

    def self.mileage_cap(distance)
        self.all.select{|driver| driver.miles_driven > distance}
    end
end