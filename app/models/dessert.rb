class Dessert
    @@all = []

    attr_accessor :name, :ingredients
    def initialize(name, ingredients)
        @name = name
        @ingredients = ingredients
        @@all << self
    end

    def self.all
        @@all
    end

    def 

    def ingredients
        @ingredients
    end

    def bakery
        Bakery.all.select do |bakery|
            bakery.desserts == self
        end
    end

    def calories
        ingredients.sum do |ingred|
            ingred.calories
        end
    end


end