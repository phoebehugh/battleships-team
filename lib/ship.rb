class Ship

  def initialize
    @ship = [3]
    @hit = false
  end

  def floating?
    true
  end

  def length
    ship.count
  end

  def ship
    @ship
  end

  def receive_hit
    @hit = true
  end

  def hit?
    @hit
  end

  def hits_received
    @ship.delete # ???!
  end

  def capacity
    ship.count
  end

end