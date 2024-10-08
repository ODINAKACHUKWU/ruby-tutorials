# frozen_string_literal: true

puts 'Reading Celsius temperature value from data file...'
num = File.read('temp.dat')
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'..."
fh = File.new('temp.out', 'w')
fh.puts fahrenheit
fh.close
puts "Please check file 'temp.out' for the Fahrenheit equivalence!"


require 'rubygems/config_file'