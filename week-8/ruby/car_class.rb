# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].

=begin
# 2. Pseudocode
define a class called car.
initialize a model and color of the car

define a method class that displays distance to drive

define a method class that displays the speed

define a method class to turn left

define a method class to turn right

define a method class to accelerate

define a method class to decelerate

define a method class odomoter to keep track of total distance

define a method class to stop car

define a method class that displays what action is happening

=end
# 3. Initial Solution
=begin
class Car

  def initialize(model,color)
      @model = model
      @color = color
      @speed = 1
      @time = Time.new
      @odometer = 0
      @direction = "straight"
  end

  def accelerate
    odometer
    @speed += 1
  end

  def decelerate
    odometer
    @speed -= 1
  end

  def odometer
    @odometer += @speed * (Time.new - @time)
    @time = Time.new

  end

  def turn_left
    @direction = "Left"
  end

  def turn_forward
    @direcion = "Forward"
  end

  def turn_right
    @direcion = "Right"
  end

  def stop
    odometer
    @speed = 0
  end

  def status


    puts "The direction you are heading: #{@direction} in your #{@color} #{@model}"
    puts "Current speed: #{@speed}"

    puts "Total distance traveled #{@odometer}"
  end


end

=end
# 4. Refactored Solution

class Car

  def initialize(model,color)
      @model = model
      @color = color
      @speed = 1
      @time = Time.new
      @start_time = Time.new
      @odometer = 0
      @direction = "Straight"
  end

  def accelerate
    odometer
    @speed += 1
  end

  def decelerate
    odometer
    @speed -= 1
  end

  def odometer
    @odometer += @speed * (Time.new - @time)
    @time = Time.new

  end

  def turn_left
    @direction = "Left"
  end

  def turn_forward
    @direction = "Straight"
  end

  def turn_right
    @direction = "Right"
  end

  def stop
    odometer
    @speed = 0
  end

  def status
    puts "The direction you are heading: #{@direction} in your #{@color} #{@model}"
    puts "Current speed: #{@speed}"

    puts "Total distance traveled #{@odometer.floor}"
    puts "You have been traveling for #{(Time.new - @start_time).floor} seconds."
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

crash_dummy = Car.new("Honda Civic", "Grey")

crash_dummy.accelerate
crash_dummy.status

sleep(3)
crash_dummy.decelerate
crash_dummy.status

sleep(3)
crash_dummy.accelerate
crash_dummy.status

sleep(3)
crash_dummy.accelerate
crash_dummy.status

sleep(3)
crash_dummy.turn_right
crash_dummy.status

sleep(3)
crash_dummy.stop
crash_dummy.status




# 5. Reflection