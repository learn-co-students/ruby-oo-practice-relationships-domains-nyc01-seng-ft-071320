class Show
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def show_characters
        ShowCharacter.all.select {|show_char| show_char.show == self}
    end

    def characters
        self.show_characters.map {|character| character}
    end

    def shows
        show_characters.map {|char| char.show}.uniq
    end

    def on_the_big_screen
        Movie.all.select do |movie|
            movie.name == self.name
        end
    end

end