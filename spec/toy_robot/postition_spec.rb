RSpec.describe ToyRobot::Position do
  describe "#forward" do
    let(:position) { described_class.new ToyRobot::Coordinate.new(0, 0), direction }

    context "given a symbol direction" do
      let(:direction) { :north }

      it "knows how to walk in the current direction" do
        new_position = position.forward

        expect(new_position.y).to eq(1)
      end
    end

    context "given an UPCASE direction" do
      let(:direction) { 'NORTH' }

      it "knows how to build a positon given a UPCASE direction" do
        expect(position.to_s).to eq "0,0,NORTH"
      end
    end
  end
end