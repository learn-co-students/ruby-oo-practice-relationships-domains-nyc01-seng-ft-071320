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

  def castings
    Casting.all.select { |casting| casting.character == self }
  end
  
  def movies
    castings.select do |casting|
      Movie.all.include?(casting.content)
    end.uniq
  end
  
end