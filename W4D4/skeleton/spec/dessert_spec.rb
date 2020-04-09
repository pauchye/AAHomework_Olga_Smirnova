require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cupcake) {Dessert.new("cupcake", 30, chef)}
  let(:chef) { double("chef", name: "Sam") }

  describe "#initialize" do
    it "sets a type" do
      expect(cupcake.type).to eq("cupcake")
    end

    it "sets a quantity" do
      expect(cupcake.quantity).to eq(30)
    end

    it "starts ingredients as an empty array" do
      expect(cupcake.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("abc", "30", chef)}.to raise_error (ArgumentError) 
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(cupcake.ingredients).to_not include("floor")
      cupcake.add_ingredient("floor")
      expect(cupcake.ingredients).to include("floor")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ['floor', 'milk', 'eggs']
      ingredients.each do |ingredient|
        cupcake.add_ingredient(ingredient)
      end
      cupcake.mix!
      expect(cupcake.ingredients).to_not eq(ingredients)
    end


  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cupcake.eat(3)
      expect(cupcake.quantity).to eq(27)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cupcake.eat(33)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Sam the Great Baker")
      expect(cupcake.serve).to eq("Chef Sam the Great Baker has made 30 cupcakes!")
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(cupcake)
    end
  end
end
