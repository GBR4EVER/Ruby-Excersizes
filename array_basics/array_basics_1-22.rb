# 1. Create an array that holds a variety of data (Strings, integers, floats, booleans). Print that array to the screen.
my_array = [ 1, 5, 7, 12 ]
puts my_array
print "------------------------------------------\n"
# Array's are a set of multiple values within a variable.
# The values are all assigned a index number by default. Moving in ascending order with [ 0 , 1 , 2 , 4]
# For Example
# my_array       =      [ 1, 5, 7, 12 ]
# Corresponding Index = [ 0, 1, 2, 3 ]
#----------------------------------------------------------

# 2. Create (hard-code) an array. Prompt the user for an index, then print the array element at that index. What happens if the user tries to access a non-existent array element? What happens if the user tries to use a floating point number or a word as the index?
new_array = [ 3, 6, 9, 12 ]
print "Please enter a index number 0 through 3\n"
ind = gets.chomp.to_i

puts new_array[ind]
#-----------------------------------------------------------

# 3. Learn how to use the .length to determine how many elements are in an array.
puts new_array.length

print "------------------------------------------\n"
# Output 4 since their are 4 elements or index's
#------------------------------------------------------------

# 4. Use a while loop to iterate through an array, printing each element to the screen on its own line.
new_array = [ 1, 2, 3, 4, 5, 6 ]
new_array.each { |x| puts "#{x}"}
#------------------------------------------------------------

# 5. What is the difference between printing an array to the console with puts as opposed to using p? Why might you use one instead of the other?
# The p calls the inspect method upon the object being printed. The method is useful for debugging.
#------------------------------------------------------------
print "-------------------------------------------\n"
# 6. Learn how to use << to add elements to an array.
new_array << 7
puts new_array
#------------------------------------------------------------

# 7. Learn how to use .push and .pop with arrays. What do each of these do?


    