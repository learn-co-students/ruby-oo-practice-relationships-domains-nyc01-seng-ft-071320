class Character
    @@all = []

    attr_accessor :name, :actor 

    def initialize(actor, name)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def show_characters
        ShowCharacter.all.select {|char| char.character == self}
    end

    def movie_characters
        MovieCharacter.all.select {|char| char.character == self}
    end

    def show_names
        self.show_characters.map {|char| char.show}
    end
     
    def self.most_appearances
        self.all.max_by do |char|
            (char.movie_characters.count) +
            (char.show_characters.count)
        end
    end
end