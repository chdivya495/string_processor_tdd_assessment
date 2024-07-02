require_relative '../string_processor'

RSpec.describe StringProcessor do
  let(:processor) { StringProcessor.new }

  describe '#compute_sum' do
    context 'when the input is an empty string' do
      it 'returns 0' do
        expect(processor.compute_sum("")).to eq(0)
      end
    end

    context 'when the input is a single number' do
      it 'returns the number itself' do
        expect(processor.compute_sum("1")).to eq(1)
      end
    end
  end
end
