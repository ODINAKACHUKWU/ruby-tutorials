# frozen_string_literal: true

# PROBLEM STATEMENT:

# SOLUTION:

# DEFINITION:

# EXAMPLES:
#
#

class ModernChair
  def initialize
    @material = 'glass'
    @leg_count = 4
    @cushion = false
  end

  def material
    @material
  end

  def leg_count
    @leg_count
  end

  def cushion?
    @cushion
  end
end

module ModernTable
  def initialize
    @material = 'glass'
  end

  def material
    @material
  end
end

class VintageChair
  def initialize
    @material = 'wood'
    @leg_count = 6
    @cushion = true
  end

  def material
    @material
  end

  def leg_count
    @leg_count
  end

  def cushion?
    @cushion
  end
end

class VintageTable
  def initialize
    @material = 'wood'
  end

  def material
    @material
  end
end

# Abstract Factory Interface
# 1. The abstract class defines the interface of the variant types
# 2. It makes sure all subclasses have the exact same behaviour (i.e. the same methods/interfaces)
class FurnitureFactory
  def create_chair
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def create_table
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Variant/Product/Concrete Factory Interface
# The variant type/product class decides the instance type
class ModernFurnitureFactory < FurnitureFactory
  def create_chair
    ModernChair.new
  end

  def create_table
    ModernTable.new
  end
end

# Variant/Product/Concrete Factory Interface
# The variant type/product class decides the instance type
class VintageFurnitureFactory < FurnitureFactory
  def create_chair
    VintageChair.new
  end

  def create_table
    VintageTable.new
  end
end


def client_code(factory)
  chair = factory.create_chair
  table = factory.create_table

  puts "The chair is #{chair.class} and the table is #{table.class}"
  puts "The chair is #{chair.color} and the table is #{table.color}"
end

modern_furniture_factory = ModernFurnitureFactory.new
vintage_furniture_factory = VintageFurnitureFactory.new

puts '======== Calling modern furniture factory ========'
client_code(modern_furniture_factory)

puts '======== Calling vintage furniture factory ========'
client_code(vintage_furniture_factory)

# NOTE: The difference between the `factory method` and the `abstract factory` pattern is
# that the `factory method` determines the type of object (product) that is created, while the
# `abstract factory` class determines the type of the object (product) that is created.
