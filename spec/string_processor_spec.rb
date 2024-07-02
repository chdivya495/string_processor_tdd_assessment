# frozen_string_literal: true

require_relative '../string_processor'

RSpec.describe StringProcessor do
  let(:processor) { StringProcessor.new }

  describe '#compute_sum' do
    context 'when the input is an empty string' do
      it 'returns 0' do
        expect(processor.compute_sum('')).to eq(0)
      end
    end

    context 'when the input is a single number' do
      it 'returns the number itself' do
        expect(processor.compute_sum('1')).to eq(1)
      end
    end

    context 'when the input contains multiple numbers separated by commas' do
      it 'returns the sum of the numbers' do
        expect(processor.compute_sum('1,5')).to eq(6)
        expect(processor.compute_sum('1,5,6,3')).to eq(15)
      end
    end

    context 'when the input contains newlines between numbers' do
      it 'returns the sum of the numbers' do
        expect(processor.compute_sum("1\n2,3")).to eq(6)
      end
    end

    context 'when the input ends with a newline' do
      it 'returns "Invalid Input"' do
        expect(processor.compute_sum("1,\n")).to eq('Invalid Input')
      end
    end

    context 'when a custom delimiter is specified' do
      it 'returns the sum of the numbers using the custom delimiter' do
        expect(processor.compute_sum("//;\n1;2")).to eq(3)
      end
    end

    context 'when the input contains negative numbers' do
      it 'returns "Negative numbers not allowed" with the list of negative numbers' do
        expect(processor.compute_sum('1,-5,-3')).to eq('Negative numbers not allowed -5,-3')
      end

      it 'returns the single negative number when only one negative number is provided' do
        expect(processor.compute_sum('-7')).to eq('Negative numbers not allowed -7')
      end
    end
  end
end
