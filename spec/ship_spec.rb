require 'ship'

describe Ship do
  it "has a name" do
    cruiser = Ship.new("Cruiser", 3)
    expect(cruiser.name).to eq("Cruiser")
 end
end
