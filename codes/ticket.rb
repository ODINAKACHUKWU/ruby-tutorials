# Accessors and Virtual Attributes tutorials

ticket = Object.new

def ticket.date
    "1903-01-02"
end
def ticket.venue
    "Town Hall"
end
def ticket.event
    "Author's reading"
end
def ticket.performer
    "Mark Twain"
end
def ticket.seat
    "Second Balcony, row J, seat 12"
end
def ticket.price
    5.50 
end

puts "This ticket is for: #{ticket.event}, at #{ticket.venue}.\n" +
"The performer is #{ticket.performer}.\n" + "The seat is #{ticket.seat}, " +
"and it costs $#{"%.2f." % ticket.price}"

puts ticket.object_id

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

# event2 = Ticket.new("Town Hall", "2013-11-12")
# event3 = Ticket.new("Convention Center", "2014-12-13")
# puts "We've created two tickets."
# puts "The first is for a #{event2.venue} event on #{event2.date}."
# puts "The second is for an event on #{event3.date} at #{event3.venue}."
