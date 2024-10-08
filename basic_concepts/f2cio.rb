# frozen_string_literal: true

puts 'Reading Fahrenheit temperature value from data file...'
num = File.read('temp.dat')
fahrenheit = num.to_i
celsius = (5 * fahrenheit - 160) / 9
puts "Saving result to output file 'temp.out'..."
fh = File.new('temp.out', 'w')
fh.puts celsius
fh.close
puts "Please check file 'temp.out' for the Celsius equivalence!"
