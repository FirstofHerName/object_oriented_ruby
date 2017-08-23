
class Ride
  attr_reader :speed, :direction
    
  def initialize
    @speed = 0
    @direction = 'north'
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

class Bike < Ride
  attr_reader :type, :brand, :crankset
  
  def initialize(input_options)
    super()
    @type = input_options[:type]
    @brand = input_options[:brand]
    @crankset = input_options[:crankset]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

class Car < Ride
  attr_reader :make, :model, :color

  def initialize(input_options)
    super()
    @make = input_options[:make]
    @model = input_options[:model]
    @color = input_options[:color]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

 
car = Car.new(make: "Honda", model: "civic", color: "blue" )
bike =Bike.new(type: "sport", brand: "schwinn", crankset: "double")
p bike.type
ride = Ride.new



# car.honk_horn
# bike.ring_bell