class StringCalculator
  def self.add(input)
    delimiters = [",", "\n"]
    if input.start_with?("//")
      custom_delimiter = input[2]
      delimiters << custom_delimiter
      input = input[4..-1]
    end

    numbers = input.split(Regexp.union(delimiters))
    sum = 0

    negative_numbers = []

    numbers.each do |num|
      number = num.to_i
      negative_numbers << number if number < 0
      sum += number
    end

    raise "negative numbers not allowed: #{negative_numbers.join(", ")}" unless negative_numbers.empty?
    sum
  end
end
