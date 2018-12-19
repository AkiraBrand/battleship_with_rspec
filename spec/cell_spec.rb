require 'cell'
require 'ship'

describe Cell do
  it "has a specific coordinate" do
    cell = Cell.new("B4")
    expect(cell.coordinate).to eq ("B4")
  end

  it "starts without a ship on it" do
    cell = Cell.new("B4")
    expect(cell.ship).to eq (nil)
    expect(cell.empty?).to be true
  end

  it "becomes full when a ship gets placed on it" do
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    expect(cell.empty?).to be false
  end

  it "knows when its been fired upon" do
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    cell.fire_upon
    expect(cell.fired_upon?).to be true
  end

end
