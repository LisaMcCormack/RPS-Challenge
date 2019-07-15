require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"shape" => :rock, "computer_shape" => :Scissors} }
  #let(:computer) { double(:computer) }

  describe 'shape' do
    it 'returns the player\'s shape' do
      expect(turn.shape).to eq :rock
    end
  end

  describe 'computer_shape' do
    it 'returns the computer shape' do
      expect(turn.computer_shape).to eq :Scissors
    end
  end
end


  # context 'end game' do
  #   describe '#win?' do
  #     it 'will be true if player shape is rock and computer shape is scissors' do
  #       allow(computer).to receive(:shape).and_return(:Scissors)
  #       expect(subject.win?).to be true
  #     end
  #   end
  # end
