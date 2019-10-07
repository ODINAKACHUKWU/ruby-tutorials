# Topic: JSON with Ruby

# Notes: JSON (JavaScript Object Notation) is a lightweight data interchange format. Many web applications use it to send and receive data. In Ruby you can simply work with JSON. 

# At first you have to require 'json'. 

require "json"

# Example 1: You can parse a JSON string via the JSON.parse() command. The parser generates a Ruby Hash out of the JSON.
json = '{"name": "John Doe", "sex": "Male", "age": 32}'
puts JSON.parse(json) # Output -> {"name"=>"John Doe", "sex"=>"Male", "age"=>32}

# Example 2: Generating JSON out of a Ruby hash is as simple as parsing. The method of choice is "to_json".
hash = {"name"=>"John Doe", "sex"=>"Male", "age"=>32}
puts hash.to_json(hash) # Output -> {"name":"John Doe","sex":"Male","age":32}

# Example 3: Using JSON together with Ruby symbols. This is achieved using the option "symbolize_names" for the parser. In this case, the keys in the resulting hash will be symbols instead of strings.
json = '{"name": "John Doe", "sex": "Male", "age": 32}'
puts JSON.parse(json, symbolize_names: true) # Output ->   {:name=>"John Doe", :sex=>"Male", :age=>32}
