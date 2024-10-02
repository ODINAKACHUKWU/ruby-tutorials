# frozen_string_literal: true

# Topic: Safe Navigation Operator (SNO)

# NOTE: The SNO () was added in Ruby 2.3.0. This operator is intended to shorten the paradigm of object && object.property && object.property.method in conditional statements.

# Example:
class House
  def address
    '7, Wall Street'
  end
end

house = House.new

# Invocation using chained conditional:
puts house.address if house&.address

# To shorten the above using SNO (&.)
puts house.address if house&.address

# Caution: The safe navigation operator doesn't have exactly the same behavior as the chained conditional. Using the chained conditional, the if block would not be executed if, say address was false. The safe navigation operator only recognises nil values, but permits values such as false. If address is false, using the SNO will yield an error:
