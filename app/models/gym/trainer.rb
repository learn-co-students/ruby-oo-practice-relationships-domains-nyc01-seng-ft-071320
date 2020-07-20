class Trainer
  @@all = []
  def initialize
    Trainer.all << self
  end

  def self.all
    @@all
  end

  def clients
    Client.all.select { |client| client.trainer == self }
  end

  def clients_count
    clients.count
  end

  def self.most_clients
    all.group_by { |trainer| trainer.clients_count }.max.last
  end
end