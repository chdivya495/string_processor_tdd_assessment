class StringProcessor
  def compute_sum(input)
    return 0 if input.empty?
    return input.to_i if single_value?(input)
    total_sum(split_values(input))
  end

  private

  def split_values(input)
    input.split(',').map(&:to_i)
  end

  def single_value?(input)
    input.length == 1 && input =~ /\A\d\z/
  end

  def total_sum(values)
    values.sum
  end
end
