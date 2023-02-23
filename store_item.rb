class StoreItems
  attr_accessor :color, :price, :weight, :price, :category

  def initialize(input_items)
    @color = input_items[:color]
    @price = input_items[:price]
    @wieght = input_items[:weight]
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
