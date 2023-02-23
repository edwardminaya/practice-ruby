require "./store_item.rb"

class Food < StoreItems
  attr_accessor :shelf_life

  def initialize(input_items)
    super
    @shelf_life = input_items[:shelf_life]
  end
end
