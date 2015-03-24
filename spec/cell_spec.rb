require 'cell'

describe Cell do
  let(:cell) { Cell.new }

  it "is not hit when created" do
    expect(cell).not_to be_hit
  end

  it "can be hit" do
    cell.receive_hit
    expect(cell.hit?).to eq true
  end

  it "cannot be hit if already hit" do
    cell.receive_hit
    expect{ cell.receive_hit }.to raise_error "Already Hit!!"
  end

  it "can have content" do
    cell.receive_content(:content)
    expect(cell.content).to eq :content
  end 

  it "can send a hit to its content" do
    water = double(:water, :hit? => true, :receive_hit => true)
    cell.receive_content(water)
    cell.send_hit
    expect(cell.content.hit?).to eq true
  end
end