# Topic: Case Equality Operator (===) -> also known as triple equals

# Note: This operator does not test quality, but rather test if the right operand has an 'is-a-relationship' with the left operand. This implies that if I have a set of items, does the set include an item I'm looking for?

# Example:
puts (1..5) === 3
puts (1..5) === 6
puts Integer === 42
puts Integer === 'fourtytwo'
puts /ell/ === 'Hello'
puts /ell/ === 'Foobar'

# Note: Explicit use of the case equality operator === should be avoided because it doesn't test eqaulity, and can be confusing. It is best to use synonym methods.

# Example 1: Bad practice
puts (1..5) === 3
puts Integer === 42
puts /ell/ === 'Hello'

# Example 2: Good practice, uses synonym methods
puts 42.is_a?(Integer)
puts (1..5).include?(3)
