class Casting
  attr_reader :content, :character
  @@all = []
  
  def initialize(content, character)
    @content = content
    @character = character
    Casting.all << self
  end

  def self.all
    @@all
  end
end