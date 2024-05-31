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

end