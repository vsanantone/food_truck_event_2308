class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    food_trucks = []
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |food_truck_item, amount|
    food_trucks << food_truck if food_truck_item == item
      end
    end
    food_trucks
  end

  def overstock_items
    results = []
    total_inventory.each do |food_truck_item, amount|
      results << food_truck_item if amount[:quantity] > 50 && amount[:vendors].length > 1
    end
    results
  end

  def sorted_item_list
    unique_list = []
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |food_truck_item, amount|
        unique_list << food_truck_item.name
      end
    end
    unique_list.sort.uniq
  end

  def total_inventory
    ti = Hash.new { |hash_name, key| hash_name[key] = {quantity: 0, vendors: []} }
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |food_truck_item, amount|
        ti[food_truck_item][:quantity] += amount
        ti[food_truck_item][:vendors] << food_truck
      end
    end
    ti
  end


end
