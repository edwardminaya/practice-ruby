# JavaScript Syntax
item1 = { color: "blue", price: 20, weight: 10 }
item2 = { color: "red", price: 100, weight: 20 }
item3 = { color: "yellow", price: 50, weight: 40 }

puts "This item is #{item1[:color]} and costs #{item1[:price]}"

# Ruby Syntax
item1 = { :color => "blue", :price => 20, :weight => 10 }
item2 = { :color => "red", :price => 100, :weight => 20 }
item3 = { :color => "yellow", :price => 50, :weight => 40 }

puts "This item is #{item1[:color]} and costs #{item1[:price]}"

# Using classes
class StoreItems
  def initialize(color, price, weight)
    @color = color
    @price = price
    @wieght = weight
  end

  def color
    @color
  end

  def price
    @price
  end

  def weight
    @weight
  end

  def item_info
    puts "This item is #{color} and costs $#{price}"
  end

  def change_price=(input_price)
    @price = input_price
  end

  def inflation
    @price = 1.03 * @price
  end
end

item1 = StoreItems.new("blue", 20, 10)
item2 = StoreItems.new("red", 100, 20)
item3 = StoreItems.new("yellow", 50, 40)
item1.item_info
item2.item_info
item3.item_info

item1.inflation
item2.inflation
item3.inflation

item1.item_info
item2.item_info
item3.item_info

item1.change_price = 1000
item1.item_info
