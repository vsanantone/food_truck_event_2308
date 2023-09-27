require './lib/food_truck'
require './lib/item'

RSpec.describe FoodTruck do
  before(:each) do
    @food_truck = FoodTruck.new("Rocky Mountain Pies")
    # @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    # @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
  end

  describe '#initialize' do
    it 'exist' do
      expect(@food_truck).to be_a(FoodTruck)
    end

    it "has a name and inventory" do
      expect(@food_truck.name).to eq("Rocky Mountain Pies")
      expect(@food_truck.inventory).to eq({})
    end
  end

  describe '#check_stock(item)' do
    it 'checks the stock of an item' do
      expect(@food_truck.check_stock(item1)).to eq(0)
    end
  end

  describe '#stock(item, amount)' do
    it 'stocks an item with a specific amount' do
      @food_truck.stock(item1, 30))
      expect(@food_truck.inventory).to eq({@item1 => 30})
      expect(@food_truck.check_stock(@item1)).to eq(30)
      food_truck.stock(@item1, 25)
      expect(@food_truck.check_stock(@item1)).to eq(55)
      @food_truck.stock(item2, 12)
      expect(@food_truck.check_stock(@item2)).to eq(12)
      expect(@food_truck.inventory).to eq({@item1 => 55, @item2 => 12})
    end
  end
end