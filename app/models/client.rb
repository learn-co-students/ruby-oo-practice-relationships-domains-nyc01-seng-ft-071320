class Client
    attr_accessor :name, :trainer

    @@all = []

    def initialize(name, trainer)
        @name = name
        @trainer = trainer 
        save
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

    def self.all 
        @@all 
    end

    private
    
    def save
        @@all << self 
    end 
end