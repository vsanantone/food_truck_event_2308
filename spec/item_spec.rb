require './lib/food_truck'
require './lib/item'

RSpec.describe Item do
  before(:each) do
    @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
  end

  describe '#initialize' do
    it 'exist' do
      expect(@item2).to be_a(Item)
    end

    it "has a name and price" do
      expect(@item2.name).to eq("Apple Pie (Slice)")
      expect(@item2.price).to eq(2.50)
    end
  end
end