# Topic: Regular Expressions

# Regular expressions (regex) are patterns which describe the contents of a string. They're used for testing whether a string contains a given pattern, or extracting the portions that match. A Regex holds a regular expression, used to match a pattern against strings. Regex are created using the /.../ and %r{...} literals, and by the Regexp::new constructor.

regex_one = /hay/
regex_two = %r{hay}
regex_three = Regexp.new 'hay'

puts regex_one
puts regex_two
puts regex_three
