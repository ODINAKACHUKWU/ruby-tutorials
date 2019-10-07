# Topic: Catching Exceptions with Begin/Rescue

def divide(x, y)
    return x / y
end

puts divide 10, 2
# puts divide 10, 0 #Output => throws ZeroDivisionError
# puts divide 10, "a" #Output => throws TypeError: String can't be coerced into Fixnum

# Example 1: The function can wrapped in a begin...end block to check for errors and use rescue clause to output a message and return nil if there is a problem.
# Note: The "e" in the rescue stands for "exception"
def divide(x, y)
    begin
        return x / y
    rescue
        puts "There was an error"
        return nil
    end
end

# or
# Example 2: In this exapmle, the e is used to save the error for use in the "rescue" block.
def divide(x, y)
    begin
        return x / y
    rescue => e
        puts "There was a %s (%s)" % [e.class, e.message]
        puts e.backtrace
    end
end

puts divide 10, 0
puts divide 10, "a"

# Note: If you want to do different things based on the kind of error, use multiple "rescue" clauses, each with a different error type as an argument. As in example 3...

# Example 3:
def divide(x, y)
    begin
        puts "About to divide..."
        return x / y
    rescue ZeroDivisionError
        puts "Don't divide by zero!"
        y = 1
        # The "retry" keyword will make the block to run again starting from the "begin" clause with a different value of y = 1.
        retry
    rescue TypeError
        puts "Division only works on numbers!"
        return nil
    rescue => e
        # This block is for default error handling
        puts "Don't do that (%s) " % [e.class]
        return nil
    else
        # This block will not run if there is an error that transfers control to one of the rescue blocks above. But if no error is raised, this else block will execute.
        puts "this code will run if there is no error."
        return z
    end
end

puts divide 10, 0
puts divide 10, "a"
puts divide nil, 2
puts divide 20, 5
puts divide 10, 3

# Example 4: The "ensure" clause is used to execute a block that you always want to run. The clause will be executed when there is an error or not. Unlike the "else" clause, the "ensure" clause is executed before the begin or rescue clause returns a value.
def divide(x, y)
    begin
        puts "About to divide........"
        z = x / y
        return z
    rescue ZeroDivisionError
        puts "Don't divide by zero!"
        return nil
    rescue TypeError
        puts "Division only works on numbers!"
        return nil
    rescue => e
        puts "Don't do that (%s) " % [e.class]
        return nil
    ensure
        # Note: If the "ensure" clause has a "return" that will override the return value of any other clause!
        puts "This code always runs"
    end
end

puts divide 10, 0
puts divide 10, "a"
puts divide nil, 2
puts divide 20, 5
