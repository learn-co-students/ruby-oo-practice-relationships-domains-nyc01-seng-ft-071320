class Movie
  def characters
    Character.all.select do |character| character.movie == self }
  end

  def actors
  end

  def actor_count
  end

  def self.most_actors

  end
end