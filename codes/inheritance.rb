# frozen_string_literal: true

# Topic: Inheritance

# Notes: Classes inherit their properties from Object in Ruby. This makes it possible for the class to have access to all the Object methods in Ruby.

ticket = Object.new

def ticket.date
  '1903-01-02'
end

def ticket.venue
  'Town Hall'
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  'Mark Twain'
end

def ticket.seat
  'Second Balcony, row J, seat 12'
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

ticket.set_date('Today')
puts ticket.get_date

# Class inheritance
class Probe
  def deploy(_deploy_time, _return_time)
    puts 'Deploying...'
  end

  def take_sample; end
end

# Both MineralProble and AtmosphericProbe inherit from Probe (multiple inheritance)
class MineralProbe < Probe
  def deploy(deploy_time)
    puts "Preparing sample chamber at #{deploy_time}..."
    super(deploy_time, Time.now + 2 * 60 * 60)
  end
end

class AtmosphericProbe < Probe
  def take_sample; end
end

mineral_probe = MineralProbe.new
mineral_probe.deploy Time.now

# In OOP, "attr_writer" is a setter method;
# "attr_reader" is a getter method while "attr_accessor" is composed of both methods

class Publication
  attr_accessor :publisher, :author
end

class Magazine < Publication
  attr_accessor :editor
end

mag = Magazine.new
mag.publisher = 'Solomon Ezeobika'
mag.editor = 'Ibidapo Rasheed'
mag.author = 'Ben Bruce'
puts "Mag is authored by #{mag.author}; published by #{mag.publisher} and edited by #{mag.editor}."

# instance of PrimeTimes has both publisher and editor attributes
class PrimeTimes < Magazine
end
