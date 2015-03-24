class Water

  def initialize
    @hit = false
  end

  def receive_hit
    @hit = true
  end

  def hit?
    @hit
  end

end