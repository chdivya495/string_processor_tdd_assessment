class StringProcessor
  def compute_sum(input)
    return 0 if input.empty?
    return input.to_i if single_value?(input)
    return "Invalid Input" if invalid_input?(input)
    total_sum(split_values(input))
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

  def total_sum(values)
    values.sum
  end
end
