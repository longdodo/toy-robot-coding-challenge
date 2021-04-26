RSpec.describe ToyRobot::Coordinate do
  subject { described_class.new '1', '2' }

  it 'transforms string coord params into interger ones' do
    expect(subject.x).to eq 1
    expect(subject.y).to eq 2
  end
end