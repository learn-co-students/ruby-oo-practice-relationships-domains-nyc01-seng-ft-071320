class Dessert
    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        self.save
    end

    def self.all 
        @@all 
    end 

    def save 
        @@all << self 
    end 

    def ingredients
        Ingredient.all.select{|ingredient| ingredient.dessert == self}
    end

    def calories
        result = 0
        self.ingredients.each do |ingredient|
            result += ingredient.calories
        end
        result 
    end

end