# frozen_string_literal: true

# Topic: Regular Expressions

# Regular expressions (regex) are patterns which describe the contents of a string. They're used for testing whether a string contains a given pattern, or extracting the portions that match. A Regex holds a regular expression, used to match a pattern against strings. Regex are created using the /.../ and %r{...} literals, and by the Regexp::new constructor.
Regexp.new 'hay'

m = /(\d+):(\d+)/.match 'Time is 12:30am'
puts m.pre_match
puts m.post_match
puts m[0]
puts m[1]
puts m[2]

p Regexp.last_match.pre_match # outputs pre_match
p Regexp.last_match.post_match # outputs post_match
p Regexp.last_match(0) # outputs m[0]
p Regexp.last_match(1) # outputs first_match
p Regexp.last_match(2) # outputs second_match

p 'The time is 12:30am'.scan(/\d+/)
