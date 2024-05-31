class StringCalculator
  def self.add(input)
    delimiters = [",", "\n"]

    numbers = input.split(Regexp.union(delimiters))
    sum = 0

    numbers.each do |num|
      number = num.to_i
      puts number
      sum += number
    end
    sum
  end
end
