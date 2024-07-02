# StringProcessor TDD Kata

## Overview

This project is a TDD (Test-Driven Development) implementation of a simple string calculator, renamed as `StringProcessor`. The calculator processes strings of comma-separated numbers, including handling newlines, custom delimiters, and error cases for negative numbers.

## Project Structure

- `tdd/string_processor.rb`: The core implementation of the `StringProcessor`.
- `tdd/spec/string_processor_spec.rb`: RSpec test cases for `StringProcessor`.



### Prerequisites

Ensure you have Ruby installed on your machine. You can check the Ruby version by running:

```bash
ruby -v

## Setup Instructions

1. Clone the Repository

git clone https://github.com/yourusername/string-processor-tdd.git
cd string-processor-tdd

2. Running Example Script

You can run the StringProcessor with an example input by creating a simple Ruby script or testing directly in the IRB console.

require_relative 'tdd/string_processor'

processor = StringProcessor.new
result = processor.compute_sum("1,2,3")
puts "The result is: #{result}"

ruby run_processor.rb

3. Running RSpec Tests
	 rspec tdd/spec
