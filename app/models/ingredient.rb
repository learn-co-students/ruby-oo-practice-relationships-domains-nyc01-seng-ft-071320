class Ingredient
    attr_accessor :name, :calories, :dessert

    @@all = []

    def initialize(name, calories, dessert)
        @name = name
        @calories = calories
        @dessert = dessert 
        self.save 
    end

    def self.all
        @@all 
    end
    
    def save
        @@all << self
    end

    def bakery
        @dessert.bakery
    end

    def self.find_all_by_name(ingredient_name)
        self.all.select{|ingredient| ingredient.name.include?(ingredient_name)}
    end
end