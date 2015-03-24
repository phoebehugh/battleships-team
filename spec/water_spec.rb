require 'water'

describe Water do

  it "can receive a hit" do
    water = Water.new
    water.receive_hit
    expect(water.hit?).to eq true
  end

end