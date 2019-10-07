# Topic: Accessors and Virtual Attributes tutorials

# Notes: The superclass of Class is Module. Instances of class therefore have access to the instance methods defined in Module; among them are the "attr_acessor", "attr_reader", and "attr_writer" family of methods.

# Method 1
class Spaceship

    attr_accessor :destination

end

ship = Spaceship.new
ship.destination = "Earth"
puts ship.destination

# Method 2
class Spaceship

    def destination
        @destination
    end

    # The equal sign indicates that the destination in this method is a setter method
    def destination=(new_destination)
        @destination = new_destination
    end

end

# Note: Methods 1 and 2 does the same thing. In Method 1, the "attr_accessor" defines the property destination to be read and write while in Method 2, both getter and setter methods are defined for destination.

# Example 2: In this example, both setter and getter methods are defined for name.
class Person

    def initialize
        puts "Creating a new person!"
    end

    def set_name(string)
        puts "Setting person's name..."
        @name = string
    end

    def get_name
        puts "Returning the person's name..."
        @name
    end 

end

joe = Person.new
joe.set_name("Joe")
puts joe.get_name

# Example 3: In this example, there are a lot of repetitions in the methods defined in the class. 
class Ticket

    def initialize(event, venue, date)
        @event = event
        @venue = venue
        @date = date
        puts "Creating a new ticket for #{event}..."
    end

    def event
        @event
        puts "#{@event}"
    end

    def venue
        @venue
    end

    def date
        @date
        puts "The date for #{event} is #{@date}."
    end

    def set_price(amount)
        @price = amount
    end

    def price
        @price
        puts "The ticket for #{event} costs $#{"%.2f" % @price}."
    end

    def discount(percent)
        @price = @price * (100 - percent) / 100.0
        puts "The ticket for #{event} has been discounted $#{"%.2f" % percent} to $#{"%.2f" % @price}."
    end

end

event = Ticket.new("Valedictory Ceremony", "Convention Center", Time.new.strftime("%m-%d-%y"))
puts event.date
event.set_price(100)
event.price
event.discount(15)
event.price
event.event

# Example 4: This example trims the code, not by reducing what the method does but by expressing the same function more concisely. This is achieved using the "attr_reader", "attr_writer" and symbols.
class Ticket

    attr_reader :event, :venue, :date, :price
    attr_writer :price

    def initialize(event, venue, date)
        @event = event
        @venue = venue
        @date = date
        puts "Creating a new ticket for #{event}..."   
    end

    def set_price(amount)
        @price = amount
    end

    def discount(percent)
        @price = @price * (100 - percent) / 100.0
        puts "The ticket for #{event} has been discounted $#{"%.2f" % percent} to $#{"%.2f" % @price}."
    end
    
end

# Final note:
# Ticket#price refers to the instance method price in the class Ticket
# Ticket.most_expensive refers to the class method most_expensive in the class Ticket
# Ticket::most_expensive also refers to the class method Most_expensive method
