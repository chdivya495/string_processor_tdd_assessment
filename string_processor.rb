class StringProcessor
  def compute_sum(input)
    return 0 if input.empty?
    return input.to_i if single_value?(input)
  end

  private

  def single_value?(input)
    input.length == 1 && input =~ /\A\d\z/
  end
end
