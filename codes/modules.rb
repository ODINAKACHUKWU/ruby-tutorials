# frozen_string_literal: true

# Topic: Modules and Program organization

# NOTE: Modules encourage modular design: program design that breaks large components into smaller ones and lets you mix and match object behaviours. Like classes, modules are bundles of methods and constants. Unlike classes, modules don't have instances; instead, you specify that you want to add the functionality of a particular module to that of a class or a specific object.

# Defining a module: The keyword "Module" is used to define a module. Modules don't have instances. Instead, modules get mixed in to classes, using the "include" method or the "prepend" method. The result of mixing in a module is that instances of the class have access to the instance methods defined in the module.

# Example:
module FirstModule
  def ruby_version
    system('ruby -v')
  end
end

class ModuleTester
  include FirstModule
end

mt = ModuleTester.new
mt.ruby_version

module SecondModule
  class Person
    CONSTANT = 3
  end

  class Vehicle
    CONSTANT = 5
  end
end

# class PersonOne < SecondModule::Person
#   puts CONSTANT
# end

# class PersonTwo < SecondModule::Vehicle
#   puts CONSTANT
# end

# class VerhicleOne < SecondModule::Vehicle
#   puts CONSTANT
# end

class Person
  def instance_var
    @instance_var = 'instance variable'
  end

  def self.class_var
    @@class_var = 'class variable'
  end

  def say_hi
    "Hi, I have an #{@instance_var}"
  end

  def self.say_hi
    "Hi, I have a #{@class_var}"
  end
end

bob = Person.new
puts bob.say_hi
puts Person.say_hi
