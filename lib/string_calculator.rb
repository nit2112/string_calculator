class StringCalculator
  def self.add(input)
    if input.empty?
      0
    else
      numbers = input.split(",").map {|x| x.to_i}
      numbers.reduce(:+)
    end
  end
end
