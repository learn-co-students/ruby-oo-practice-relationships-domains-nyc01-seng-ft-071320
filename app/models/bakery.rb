class Bakery

    @@all = []
    attr_accessor :name, :desserts

    def initialize(name, desserts)
        @name = name
        @desserts = desserts
        @@all << self
    end

    def ingredients
        desserts.map do |dessert|
            dessert.ingredients
        end.flatten.uniq
    end

    def desserts
        @desserts.map do |dessert|
            dessert
        end
    end

    def add_dessert(dessert)
        desserts << dessert
    end

    def average_calories
        total_cal = desserts.sum do |dessert|
            dessert.calories
        end
        total_cal / desserts.count
    end

    def self.all
        @@all
    end

    def shopping_list
        ingredients.map do |ingred|
            ingred.name
        end
    end

end