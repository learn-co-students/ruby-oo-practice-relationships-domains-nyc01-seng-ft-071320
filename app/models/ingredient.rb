class Ingredient

    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all << self
    end
    
    def dessert
        Dessert.all.select do |baked_good|
            baked_good.ingredient == self
        end
    end

    def bakeries
        dessert.map do |baked_good|
            baked_good.bakery
        end
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
        self.all.find_all do |ingred|
            ingred.include?(ingredient)
        end
    end
end