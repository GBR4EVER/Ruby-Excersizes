# 1. Create an array that holds a variety of data (Strings, integers, floats, booleans). Print that array to the screen.
my_array = [ 1, 5, 7, 12 ]
puts my_array
# Array's are a set of multiple values within a variable.
# The values are all assigned a index number by default. Moving in ascending order with [ 0 , 1 , 2 , 4]
# For Example
# my_array       =      [ 1, 5, 7, 12 ]
# Corresponding Index = [ 0, 1, 2, 3 ]
#----------------------------------------------------------

# 2. Create (hard-code) an array. Prompt the user for an index, then print the array element at that index. What happens if the user tries to access a non-existent array element? What happens if the user tries to use a floating point number or a word as the index?
new_array = [ 3, 6, 9, 12 ]
print "Please enter a index number 0 through 3"
index = gets.chomp.to_i
if index >= 0..3
  