class Cell
  attr_reader :content

  def receive_hit
    @hit = true
  end  

  def send_hit
    @content.receive_hit
  end

  def hit?
    @hit
  end

  def receive_content(value)
    @content = value
  end 
end