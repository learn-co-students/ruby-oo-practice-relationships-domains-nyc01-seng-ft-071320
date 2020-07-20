class Character
  attr_reader :actor
  @@all = []
  
  def initialize(actor)
    @actor = actor
    Character.all << self
  end

  def self.all
    @@all
  end

  def movies
    Movie.all.select { |movie| movie.character == self }
  end
  
end