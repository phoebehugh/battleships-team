require 'ship'

describe Ship do
  let(:ship) { Ship.new }
  
  it "when created it is floating" do
    expect(ship).to be_floating
  end

  it "has a length" do
    expect(ship.length).to eq 1
  end

end