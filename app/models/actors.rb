class Actor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select {|char| char.actor == self}
    end

    def  total_characters
        characters.map {|char| char.name}
    end

    def self.most_characters
        self.all.max_by {|char| char.total_characters.count}
    end
end