class Actor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all 
        @@all 
    end

    def my_characters
        Character.all.select{|character| character.actor == self}
    end

    def self.most_characters 
        self.all.max{|a, b| a.my_characters.count <=> b.my_characters.count}
    end

    private 

    def save
        @@all << self 
    end

end