class Location
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all 
        @@all 
    end

    def sessions
        Session.all.select{|session| session.location == self}
    end

    def clients
       self.sessions.map{|session| session.client}.uniq
    end

    def self.least_clients 
        self.all.min{|a, b| a.clients.count <=> b.clients.count}
    end

    private
    
    def save
        @@all << self 
    end 
end