class Actor
  attr_reader :actor
  
  def characters
    Character.all.select { |character| character.actor == self }
  end

  def character_count
    characters.count
  end
end