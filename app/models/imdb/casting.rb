class Casting
  @@all = []
  def initialize(content)
    @content = content
    Casting.all << self
  end

  def self.all
    @@all
  end
end