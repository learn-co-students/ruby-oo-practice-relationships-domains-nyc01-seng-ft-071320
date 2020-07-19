class Appearance
    attr_accessor :character, :movie_or_show

    @@all = []

    def initialize(character, movie_or_show)
        @character = character 
        @movie_or_show = movie_or_show
        
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