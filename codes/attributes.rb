# Topic: Accessors and Virtual Attributes tutorials

# Notes: The superclass of Class is Module. Instances of class therefore have access to the instance methods defined in Module; among them are the "attr_acessor", "attr_reader", and "attr_writer" family of methods.

class Spaceship
    attr_accessor :destination
end

ship = Spaceship.new
ship.destination = "Earth"
puts ship.destination

class Spaceship
    def destination
        @destination
    end

    # The equal sign indicates that the destination in this method is a setter method
    def destination=(new_destination)
        @destination = new_destination
    end
end


