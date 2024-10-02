# frozen_string_literal: true

# Topic: Open classes & monkey patching

# The concept of monkey patching is one of the most powerful aspects of Ruby. It is the ability to re-open any class and change it’s methods.

class Spaceship
  def launch
    puts 'Spaceship started!'
  end
end

ship1 = Spaceship.new
ship1.launch

class Spaceship
  def launch
    puts 'Spaceship edited!'
  end
end

ship1.launch
