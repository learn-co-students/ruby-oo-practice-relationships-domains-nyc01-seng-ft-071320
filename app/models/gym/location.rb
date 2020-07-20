class Location
  @@all = []

  def initialize
    Location.all << self
  end
  
  def self.all
    @@all
  end
  
  def clients
    Client.all.select { |client| client.location == self }
  end

  def clients_count
    clients.count
  end

  def self.least_clients
    all.group_by { |location| location.clients_count }.min.last
  end

end
