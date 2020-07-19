class Session
    attr_accessor :client, :location

    @@all = []

    def initialize(client, location)
        @client = client 
        @location = location 
        save
    end

    def self.all 
        @@all 
    end
    
    private
    
    def save
        @@all << self 
    end 
end