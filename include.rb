# MODUŁY - MIXINY
# INCLUDE

module Engine
  def start_engine
    p "Engine started"
  end
end

module ElectricEngine
  def start_engine
    p "Electric engine started"
  end
end

class Vehicle
  attr_accessor :speed
end

class Car < Vehicle
  include Engine
  include ElectricEngine

  def initialize
    @speed = 200
  end

  def start_engine
    p "Car engine started"
  end
end

class SpaceShip < Vehicle
  include Engine

  def initialize
    @speed = 20000
  end
end

class Aeroplane < Vehicle
  include Engine

  def initialize
    @speed = 500
  end
end

class Bike < Vehicle
  def initialize
    @speed = 50
  end
end

car = Car.new
space_ship = SpaceShip.new
plane = Aeroplane.new
bike = Bike.new

car.start_engine
space_ship.start_engine
plane.start_engine

p bike.speed
p car.speed
