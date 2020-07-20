class Movie
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def movie_characters
        MovieCharacter.all.select do |movie|
            movie.movie == self
        end
    end

    def characters
        movie_characters.map do |char|
            char.character
        end
    end


    def self.most_actors
        self.all.max_by do |i|
            i.characters.count
        end
    end

end