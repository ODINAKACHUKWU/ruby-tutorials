# frozen_string_literal: true

# Topic: Method visibility

# In Ruby, every method added to a class is public by default. Thus, to make a method unaccessible by instances of its class, use the keywords -> private or protected

# Method 1:
class Spaceship
  def launch
    batten_hatches
    light_seatbelt_sign
  end

  def batten_hatches
    puts 'Batten the hatches!'
  end

  def light_seatbelt_sign
    puts 'The seatbelt sign is now on'
  end

  private :batten_hatches, :light_seatbelt_sign
end

# Method 2:
class Spaceship
  def launch
    batten_hatches
    light_seatbelt_sign
  end

  private

  def batten_hatches
    puts 'Batten the hatches!'
  end

  def light_seatbelt_sign
    puts 'The seatbelt sign is now on'
  end
end

class SpritelySpaceship < Spaceship
  def initialize
    batten_hatches
  end
end

Spaceship.new
new_ship = Spaceship.new
SpritelySpaceship.new

# This will inherit the "batten_hatches" method

# This will throw an error -> NoMethodError because the method "batten_hatches" is private to Spaceship
# method invocation -> ship.batten_hatches

# In Ruby, the visibility is not strongly enforced. Therefore, a class instance can use "send" method to invoke private methods in the class
new_ship.send :batten_hatches

# Method 3: How to protect class method
class SpaceShip
  # It is wrong to do this -> "Prefixing self to the method"
  def self.disable_engine_containment
    puts 'This is a class method!'
  end

  # This will throw undefined method
  # Method protection -> private :disable_engine_containment
end

SpaceShip.new

# This will throw NoMethodError
# method invocation -> space_ship.disable_engine_containment

# Method 4: The right way to protect class method
class SpaceShip
  def launch
    batten_hatches
  end

  attr_reader :call_sign
  protected :call_sign

  def initialize
    @call_sign = 'Dreadnought'
  end

  def call_sign_matches?(other)
    call_sign == other.call_sign
  end
end

class SpritelySpaceShip < SpaceShip
  def initialize
    @call_sign = 'Fast cruiser'
  end

  # def call_method
  #     puts "This method is private the this class"
  # end

  # private_class_method :call_method
end

ship_one = SpaceShip.new
fast_ship = SpritelySpaceShip.new

puts fast_ship.call_sign_matches?(ship_one)
# puts fast_ship.call_method

# This will throw NoMethodError (protected method)
puts ship_one.call_sign
