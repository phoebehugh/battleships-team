require 'water'

describe Water do
  let(:water) { Water.new }

  it "when created it is not hit" do
    expect(water).not_to be_hit
  end

  it "can receive a hit" do
    water.receive_hit
    expect(water.hit?).to eq true
  end

end