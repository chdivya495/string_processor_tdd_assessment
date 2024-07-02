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

    context 'when the input contains multiple numbers separated by commas' do
      it 'returns the sum of the numbers' do
        expect(processor.compute_sum("1,5")).to eq(6)
        expect(processor.compute_sum("1,5,6,3")).to eq(15)
      end
    end

    context 'when the input contains newlines between numbers' do
      it 'returns the sum of the numbers' do
        expect(processor.compute_sum("1\n2,3")).to eq(6)
      end
    end

    context 'when the input ends with a newline' do
      it 'returns "Invalid Input"' do
        expect(processor.compute_sum("1,\n")).to eq("Invalid Input")
      end
    end
  end
end
