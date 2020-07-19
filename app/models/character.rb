class Character
    attr_accessor :name, :actor

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        save
    end

    def self.all 
        @@all 
    end

    def appearances
        Appearance.all.select{|appearance| appearance.character == self}
    end

    def self.most_appearances
        self.all.max{|a, b| a.appearances.count <=> b.appearances.count}
    end

    private 

    def save
        @@all << self 
    end
end