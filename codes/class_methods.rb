# Topic: Class Methods and Class Variables

# Note: In Ruby, the "self" can be used to define a class method which makes it accessible to only the class but not the instances of the class. The "@@" is used to define class variables -> variable that beolongs to a class

class Spaceship

    @@thruster_count = 5

    def self.thruster_count
        @@thruster_count # This is a class variable
    end

end

class SpritelySpaceship < Spaceship

    @@thruster_count = 1 # This is an instance variable

end

class EconolineSpaceship < Spaceship

    @@thruster_count = 4 # This is an instance variable
    
end

# Note: The output for all the logs below will be 4 because we change the value of the variable which belong to the parent class (Spaceship) at each child of the class (SritelySpaceship and EconolineSpaceship).
puts SpritelySpaceship.thruster_count
puts EconolineSpaceship.thruster_count
p Spaceship.thruster_count

ship = Spaceship.new

# Below logs NoMethodError. This is because the "thruster_count" method only belongs to the parent class Spaceship (due to the "self." prefixed to the method). Therefore, the instance (ship) cannot access the method.
puts ship.thruster_count
