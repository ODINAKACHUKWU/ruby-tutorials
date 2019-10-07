# Topic: Permutation and Combination of a array

# Notes: Permutation => the permutation method, when called with a block yield a two-dimentional array consisting of all ordered sequences of a collection of numbers. If this method is called without a block, it will return an enumerator. To convert to an array, call the "to_a" method.

# Example:
array = [1,2,3]
array_two = [1,2,3,4,5]
puts array.permutation #Output => <Enumerator: [1,2,3]:permutation>
puts array.permutation.to_a #Output => [[1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], [3,2,1]]
puts array.permutation(2).to_a #Output => [[1,2],[1,3],[2,1],[2,3],[3,1],[3,2]] 
puts array.permutation(4).to_a #Output => [] No permutations of length 4

# Combination => the combination method on the other hand, when called with a block yields a two-dimensional array consisting of all sequences of a collection of numbers. Unlike permutation, order is disregarded in combinations. For example, [1,2,3] is the same as [3,2,1]. Calling the combination method by itself will result in an enumerator. To get an array, call the "to_a" method.

# Example:
puts array.combination(1) #Output => <Enumerator: [1,2,3]:combination>
puts array.combination(1).to_a #Output => [[1], [2], [3]]
puts array.combination(3).to_a #Output => [[1,2,3]] 
puts array.combination(4).to_a #Output => [] No combinations of length 4

# The "repeated_combination" and "repeated_permutation" methods are similar, except the same element can be repeated multiple times. For example the sequences [1,1], [1,3,3,1], [3,3,3] would not be valid in regular combinations and permutations.

# Example:
puts array.combination(3).to_a.length #Output => 1
puts array.repeated_combination(3).to_a.length #Output => 6
puts array_two.combination(5).to_a.length #Output => 1 
puts array.repeated_combination(5).to_a.length #Output => 126
