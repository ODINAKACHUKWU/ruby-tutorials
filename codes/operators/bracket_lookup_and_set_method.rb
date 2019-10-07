# Topic: Bracket Lookup and Bracket Set Operations

# Note: The Bracket Lookup and BracketSet methods have their arguments defined after the name.

# Example:
class Foo

    def [](x)
        @x = x
        puts "Looking up item #{x}"
    end

    def []=(x, y)
        puts "Setting item #{x} to #{y}"
    end

end

f = Foo.new
f[:cats] = 42 # => "Setting item cats to 42"
f[17]         # => "Looking up item 17"
f[:cats]
