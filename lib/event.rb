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
  
end
