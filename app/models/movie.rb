class Movie
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all 
        @@all 
    end

    def appearances
        Appearance.all.select{|appearance| appearance.movie_or_show == self}
    end
  
    def actors
        self.appearances.map{|appearance| appearance.character.actor}
    end

    def self.most_actors
        self.all.max{|a, b| a.actors.count <=> b.actors.count}
    end

    private 

    def save
        @@all << self 
    end

end