# In Ruby, to initialize an object, add a method called initialize to the class/object. This method is instantly called when an instance of the class/object is created.

class Person

    def initialize(name, age, occupation, address)
      puts "Hello! My name is #{name}. I am an #{age} years old #{occupation}. I live at #{address}"
    end
    
end

me = Person.new("Solomon", 18, "Sofware engineer", "7 Wall Street")
