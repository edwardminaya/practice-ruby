module Braking
  def brake
    @speed = 0
  end
end

module Accelerating
  def accelerate
    @speed += 10
  end
end

module Turning
  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Braking
  include Accelerating
  include Turning

  def initialize
    @speed = 0
    @direction = "north"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Braking
  include Accelerating
  include Turning

  def initialize
    @speed = 0
    @direction = "north"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike1 = Bike.new
bike1.ring_bell
p bike1.accelerate
