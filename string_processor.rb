class StringProcessor
  def compute_sum(input)
    return 0 if input.empty?
    return input.to_i if single_value?(input)
    return "Invalid Input" if invalid_input?(input)
    numbers = custom_delimiter?(input) ? split_custom_values(input) : split_values(input)
    validate_negatives(numbers)
  end

  private

  def single_value?(input)
    input.length == 1 && input =~ /\A\d\z/
  end

  def split_values(input)
    input.split(/[,\n]/).map(&:to_i)
  end

  def invalid_input?(input)
    input.end_with?("\n")
  end

  def custom_delimiter?(input)
    input.start_with?("//")
  end

  def split_custom_values(input)
    delimiter = extract_delimiter(input)
    input.split("\n", 2).last.split(delimiter).map(&:to_i)
  end

  def extract_delimiter(input)
    input.split("\n").first[2..-1]
  end

  def validate_negatives(values)
    negatives = values.select(&:negative?)
    return "Negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    values.sum
  end

  def total_sum(values)
    values.sum
  end
end
