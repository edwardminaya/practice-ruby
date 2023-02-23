require "./food.rb"

# JavaScript Syntax
item1 = { color: "blue", price: 20, weight: 10 }
item2 = { color: "red", price: 100, weight: 20 }
item3 = { color: "yellow", price: 50, weight: 40 }

puts "This item is #{item1[:color]} and costs #{item1[:price]}"

# Ruby Syntax
item1 = { :color => "blue", :price => 20, :weight => 10 }
item2 = { :color => "red", :price => 100, :weight => 20 }
item3 = { :color => "yellow", :price => 50, :weight => 40 }

item1 = StoreItems.new({ color: "blue", price: 20, weight: 10 })
item2 = StoreItems.new({ color: "red", price: 100, weight: 20 })
item3 = StoreItems.new({ color: "yellow", price: 50, weight: 40 })
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

food1 = Food.new({ color: "white", price: 20, weight: 10, shelf_life: 1 })
p food1.shelf_life
