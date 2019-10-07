# Topic: Percent Strings

# Besides %(...) which creates a String, The % may create other types of object. As with strings, an uppercase letter allows interpolation and escaped characters while a lowercase letter disables them.

# These are the types of percent strings in ruby:

# One: %i
# Array of Symbols
array_of_symbols = %i[one two three]
puts array_of_symbols.class

# Two: %q (Single-quote string) or %Q (Double-quote string)
# String
string = %q{This is a string}
puts string.class

# Three: %r
# Regular Expression
regex = %r(This is a regular expression)
puts regex.class

# Four: %s
# Symbol
symbol = %s[sample_symbol]
puts symbol.class

# Five: %w (Single-quote string) or %W (Double-quote string)
# Array of Strings
array_of_strings = %w<one two string\ three>
puts array_of_strings.class

# Six: %x
# Backtick (capture subshell result)
name = "Obi"
backtick = %x{echo #{name} is a boy}
puts backtick

# Notes: 
# One: For the two array forms of percent string, if you wish to include a space in one of the array entries you must escape it with a “\” character.

# Two: If you are using “(”, “[”, “{”, “<” you must close it with “)”, “]”, “}”, “>” respectively. You may use most other non-alphanumeric characters for percent string delimiters such as “%”, “|”, “^”, "+", "/", "!", etc.
