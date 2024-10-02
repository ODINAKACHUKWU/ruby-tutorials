# frozen_string_literal: true

# Topic: Catching Exceptions with Begin/Rescue

def divide(x, y)
  x / y
end

puts divide 10, 2
# puts divide 10, 0 #Output => throws ZeroDivisionError
# puts divide 10, "a" #Output => throws TypeError: String can't be coerced into Fixnum

# Example 1: The function can wrapped in a begin...end block to check for errors and use rescue clause to output a message and return nil if there is a problem.
# Note: The "e" in the rescue stands for "exception"
def divide(x, y)
  x / y
rescue StandardError
  puts 'There was an error'
  nil
end

# or
# Example 2: In this exapmle, the e is used to save the error for use in the "rescue" block.
def divide(x, y)
  x / y
rescue StandardError => e
  puts format('There was a %s (%s)', e.class, e.message)
  puts e.backtrace
end

puts divide 10, 0
puts divide 10, 'a'

# NOTE: If you want to do different things based on the kind of error, use multiple "rescue" clauses, each with a different error type as an argument. As in example 3...

# Example 3:
def divide(x, y)
  puts 'About to divide...'
  return x / y
rescue ZeroDivisionError
  puts "Don't divide by zero!"
  y = 1
  # The "retry" keyword will make the block to run again starting from the "begin" clause with a different value of y = 1.
  retry
rescue TypeError
  puts 'Division only works on numbers!'
  nil
rescue StandardError => e
  # This block is for default error handling
  puts format("Don't do that (%s) ", e.class)
  nil
else
  # This block will not run if there is an error that transfers control to one of the rescue blocks above. But if no error is raised, this else block will execute.
  puts 'this code will run if there is no error.'
  z
end

puts divide 10, 0
puts divide 10, 'a'
puts divide nil, 2
puts divide 20, 5
puts divide 10, 3

# Example 4: The "ensure" clause is used to execute a block that you always want to run. The clause will be executed when there is an error or not. Unlike the "else" clause, the "ensure" clause is executed before the begin or rescue clause returns a value.
def divide(x, y)
  puts 'About to divide........'
  z = x / y
  z
rescue ZeroDivisionError
  puts "Don't divide by zero!"
  nil
rescue TypeError
  puts 'Division only works on numbers!'
  nil
rescue StandardError => e
  puts format("Don't do that (%s) ", e.class)
  nil
ensure
  # NOTE: If the "ensure" clause has a "return" that will override the return value of any other clause!
  puts 'This code always runs'
end

puts divide 10, 0
puts divide 10, 'a'
puts divide nil, 2
puts divide 20, 5
