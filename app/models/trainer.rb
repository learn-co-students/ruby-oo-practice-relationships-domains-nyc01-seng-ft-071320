class Trainer
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
        Session.all.select{|session| session.client.trainer == self}
    end

    def clients
       self.sessions.map{|session| session.client}.uniq
    end

    def self.most_clients 
        self.all.max{|a, b| a.clients.count <=> b.clients.count}
    end

    private

    def save
        @@all << self 
    end
end