RSpec.describe ToyRobot::Directions do
  subject(:directions) { described_class }

  describe "[]" do
    let(:north) { directions[:north] }

    it "creates a North direction when a :north symbol is passed" do
      expect(north).to be_a ToyRobot::Directions::North
    end

    it "returns correct direction after calling #[] with a different symbol" do
      directions[:north]
      west = directions[:west]

      expect(west).to be_a ToyRobot::Directions::West
    end
  end

  describe ToyRobot::Directions::North do
    subject(:north) { described_class.new }

    describe "#left" do
      it "knows which direction is at 90º left" do
        expect(north.left).to be_a ToyRobot::Directions::West
      end
    end

    describe "#right" do
      it "knows which direction is at 90º right" do
        expect(north.right).to be_a ToyRobot::Directions::East
      end
    end

    describe "#forward" do
      let(:coord) { ToyRobot::Coordinate.new 0, 0 }
      let(:new_coord) { north.forward(coord) }

      it "knows to move one step forward given a Coordinate" do
        expect(new_coord.x).to eq(0)
        expect(new_coord.y).to eq(1)
      end
    end
  end

  describe ToyRobot::Directions::West do
    subject(:west) { described_class.new }

    describe "#left" do
      it "knows which direction is at 90º left" do
        expect(west.left).to be_a ToyRobot::Directions::South
      end
    end

    describe "#right" do
      it "knows which direction is at 90º right" do
        expect(west.right).to be_a ToyRobot::Directions::North
      end
    end

    describe "forward" do
      let(:new_coord) { west.forward ToyRobot::Coordinate.new 1, 0 }

      it "knows to move one step forward given a Coordinate" do
        expect(new_coord.x).to eq(0)
        expect(new_coord.y).to eq(0)
      end
    end
  end

  describe ToyRobot::Directions::South do
    subject(:south) { described_class.new }

    describe "#left" do
      it "knows which direction is at 90º left" do
        expect(south.left).to be_a ToyRobot::Directions::East
      end
    end

    describe "#right" do
      it "knows which direction is at 90º right"do
        expect(south.right).to be_a ToyRobot::Directions::West
      end
    end

    describe "#forward" do
      let(:new_coord) { south.forward ToyRobot::Coordinate.new 0, 1 }

      it "knows to move one step forward given a Coordinate" do
        expect(new_coord.x).to eq(0)
        expect(new_coord.y).to eq(0)
      end
    end
  end

  describe ToyRobot::Directions::East do
    subject(:east) { described_class.new }

    describe "#left" do
      it "knows which direction is at 90º left" do
        expect(east.left).to be_a ToyRobot::Directions::North
      end
    end

    describe "#right" do
      it "knows which direction is at 90º right" do
        expect(east.right).to be_a ToyRobot::Directions::South
      end
    end

    describe "#forward" do
      let(:new_coord) { east.forward ToyRobot::Coordinate.new 0, 0 }

      it "knows to move one step forward given a Coordinate" do
        expect(new_coord.x).to eq(1)
        expect(new_coord.y).to eq(0)
      end
    end
  end
end