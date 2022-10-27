require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:cookie) { Dessert.new("cookie", 100, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(cookie.type).to eq("cookie")
    end
    
    it "sets a quantity" do
      expect(cookie.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(cookie.ingredients).to eq([])
    end


    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("brownie", "sugar", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cookie.add_ingredient("sugar")
      expect(cookie.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
    ingredients = ["sugar", "flour", "coffee", "brownsugar"]

    ingredients.each do |ingredient|
      cookie.add_ingredient(ingredient)
      end

      expect(cookie.ingredients).to eq(ingredients)
      cookie.mix!
      expect(cookie.ingredients).not_to eq(ingredients)
      expect(cookie.ingredients.sort).to eq(ingredients.sort)
       end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cookie.eat(10)
      expect(cookie.quantity).to eq(90)
    end
    it "raises an error if the amount is greater than the quantity"  do 
      expect{cookie.eat(500)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 

    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
