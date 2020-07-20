class Movie
  def characters
    Character.all.select { |character| character.movies == self }
  end

  def actors
    characters.map(&:actor)
  end

  def actor_count
    actors.count
  end

  def self.most_actors
    all.group_by { |movie| movie.actor_count }.max.last
  end
end