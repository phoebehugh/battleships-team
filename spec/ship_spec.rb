require 'ship'

describe Ship do
  let(:ship) { Ship.new }
  
  it "when created it is floating" do
    expect(ship).to be_floating
  end

  it "has a length" do
    expect(ship.length).to eq 1
  end

  it "can receive a hit" do
    ship.receive_hit
    expect(ship.hit?).to eq true
  end

  it "knows how many hits it can take" do
    expect(ship).to respond_to :capacity
  end

end