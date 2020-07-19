class User
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

    def self.highest_pledge
        highest_pledge = Pledge.all.max{|a, b| a.amount <=> b.amount}
        highest_pledge.user 
    end 

    def self.multi_pledger
        Pledge.all.select{|pledge| pledge.user}
    end

    def self.project_creator
        Pledge.all.map{|pledge| pledge.user}.uniq
    end 
end

    