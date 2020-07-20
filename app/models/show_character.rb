class ShowCharacter
    @@all = []

    attr_reader :show, :character 

    def initialize(show, character)
        @show = show
        @character = character
        @@all << self
    end

    def self.all
        @@all
    end

end