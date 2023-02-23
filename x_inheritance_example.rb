class Vehicle
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize
    super
    @make = "Honda"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize
    super
    @weight = 20
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new
p car1.accelerate
car1.honk_horn
p car1
bike1 = Bike.new
p bike1.accelerate
bike1.ring_bell
p bike1
