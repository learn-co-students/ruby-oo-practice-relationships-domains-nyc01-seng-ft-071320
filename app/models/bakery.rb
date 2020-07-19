class Bakery
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all 
        @@all 
    end

    def save
        @@all << self
    end
    
    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}
    end

    def ingredients
        self.desserts.map{|dessert| dessert.ingredients}
    end

    def average_calories
        number_of_desserts = self.desserts.count
        number_of_calories = 0
        self.desserts.each{|dessert| number_of_calories += dessert.calories}
        number_of_calories
    end

    def shopping_list
        self.ingredients.map{|ingredient| ingredient.map{|ingredient| ingredient.name}}.join(", ")
    end
end