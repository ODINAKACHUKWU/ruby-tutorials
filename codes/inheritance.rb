# Topic: Inheritance

# Notes: Classes inherit their properties from Object in Ruby. This makes it possible for the class to have access to all the Object methods in Ruby.

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

def ticket.set_date(date)
    @date = date
    puts "New date is #{@date}"
end

def ticket.get_date
    @date
end

new_ticket = ticket
second_ticket = ticket.clone

puts ticket.class
puts ticket.object_id
puts new_ticket.object_id
puts second_ticket.object_id
puts new_ticket.date
puts ticket.date
puts second_ticket.date

ticket.set_date("Today")
puts ticket.get_date
