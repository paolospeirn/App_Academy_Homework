require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cake) { Dessert.new("cake", 10, "chef")}

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do

      expect{ Dessert.new("cake", "five", "chef") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(cake.add_ingredient("banana")).to eq(["banana"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(cake.mix!).to_not eq(["banana", "sugar", "flour"])
    end

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(cake.eat(7)).to eq(3)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect(cake.eat(20)).to raise_error(RuntimeError)
    end

  end


  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(cake.serve).to eq("Chef has made 10 cakes!")
    end

  end

  describe "#make_more" do
    let(:chef) { (Chef.new(Brian)) }
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(cake.make_more).to eq("cake filler")
    end
  end
end
