class Movie
  @@all = []

  def initialize
    Movie.all << self
  end
  
  def self.all
    @@all
  end

  def castings
    Casting.all.select { |casting| casting.content == self }
  end

  def characters
    castings.map(&:character)
  end

  def actors
    characters.map(&:actor).uniq
  end

  def actor_count
    actors.count
  end
  
  def self.most_actors
    all.group_by { |movie| movie.actor_count }.max.last
  end
end