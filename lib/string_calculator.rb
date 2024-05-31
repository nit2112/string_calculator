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

    numbers.each do |num|
      number = num.to_i
      raise "negative numbers not allowed: #{number}" if number < 0
      sum += number
    end
    sum
  end
end
