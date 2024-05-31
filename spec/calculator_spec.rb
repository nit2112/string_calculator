require "string_calculator"

describe StringCalculator do

  context "when input contains two numbers" do
    it "returns their sum" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end
  end

  context "given an empty string" do
    it "returns zero" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end

  context "when input contains numbers separated by newlines" do
    it "returns their sum" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
  end

  context "when input contains a custom delimiter" do
    it "returns their sum" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end

end