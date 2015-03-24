class Ship

  def initialize
    @ship = [1]
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

end