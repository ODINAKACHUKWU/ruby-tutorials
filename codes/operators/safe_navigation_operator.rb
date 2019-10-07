# Topic: Safe Navigation Operator (SNO)

# Note: The SNO () was added in Ruby 2.3.0. This operator is intended to shorten the paradigm of object && object.property && object.property.method in conditional statements.

# Example:
class House

    def address
        street_name = "7, Wall Street"
    end

end

house = House.new

# Invocation using chained conditional:
if house && house.address
    puts house.address
end

# To shorten the above using SNO (&.)
if house&.address
    puts house.address
end

# Caution: The safe navigation operator doesn't have exactly the same behavior as the chained conditional. Using the chained conditional, the if block would not be executed if, say address was false. The safe navigation operator only recognises nil values, but permits values such as false. If address is false, using the SNO will yield an error:
