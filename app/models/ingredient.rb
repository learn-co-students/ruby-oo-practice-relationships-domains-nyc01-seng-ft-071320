class Ingredient

    @@all = []
    attr_accessor :name, :calories
    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def dessert
        found = []
        Dessert.all.each do |baked_good|
            baked_good.ingredients.each do |ingred|
                if(ingred == self)
                    found << baked_good
                end
            end
        end
        found
    end

    def bakeries
        locations = []
        Bakery.all.each do |bakery|
            bakery.ingredients.each do |ingred|
                if(ingred == self)
                    locations << bakery
                end
            end
        end
        locations
    end
        
    

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
        self.all.find_all do |ingred|
            ingred.name.upcase.include?(ingredient.upcase)
        end
    end
end