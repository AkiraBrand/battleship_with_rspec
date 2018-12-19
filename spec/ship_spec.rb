require 'ship'

describe Ship do
  describe ".name" do
    it "is a cruiser" do
      cruiser = Ship.new("Cruiser", 3)
      expect(cruiser.name).to eq("Cruiser")
    end
 end

  describe ".length" do
    it "has lenghth of three" do
    cruiser = Ship.new("Cruiser", 3)
    expect(cruiser.length).to eq(3)
   end
  end

  describe ".health" do
    it "has health of three" do
    cruiser = Ship.new("Cruiser", 3)
    expect(cruiser.health).to eq(3)
   end
  end

  describe ".sunk?" do
    it "defaults to not sunk" do
      cruiser = Ship.new("Cruiser", 3)
      expect(cruiser.sunk?).to be false
    end
  end

  describe ".hit" do
    it "takes away a health point for each hit" do
      cruiser = Ship.new("Cruiser", 3)
      cruiser.hit
      expect(cruiser.health).to eq(2)
      cruiser.hit
      cruiser.hit
      expect(cruiser.sunk?).to be true
    end
  end
end
