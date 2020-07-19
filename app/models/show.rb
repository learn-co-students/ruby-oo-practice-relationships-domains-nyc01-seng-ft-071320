class Show
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all 
        @@all 
    end

    def on_the_big_screen
        Movie.all.select{|movie| movie.name == self.name}
    end

    private 

    def save
        @@all << self 
    end

end