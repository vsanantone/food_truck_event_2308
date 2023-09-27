class Item
  attr_reader :name, :price

  def initialize(info)
    @name = info[:name]
    @price = info[:price].gsub("$", "").to_f
  end


end