# 1. Learn what strings, integers, floats (floating point numbers), symbols and booleans are. Learn what values they can store.
puts "This is a string"
# A String object holds and manipulates an arbitrary sequence of bytes, typically representing characters. String objects may be created using String::new or as literals.
3.downto(1) { |n| print n, ".. " }
print " BOOM!\n"
# This class is the basis for the two concrete classes that hold whole numbers, Bignum and Fixnum.
# Above is a example of the down_to method being applied to create a string outputting to the console: 
# 3.. 2.. 1.. BOOM!
# ----------------------------------------------------------

# 2. Create a variable called name and store your name in it. Print this to the screen using puts, then do it again using string interpolation.
name = "Corey"
puts name
# Interpolation allows Ruby code to appear within a string. The result of evaluating that code is inserted into the string
name = "Corey"
puts "My name is #{name}"
# Output: My name is Corey
# String interpolation is handy when impementing integers with expressions into a string.
# For Example
puts "1 + 2 = #{1 + 2}"
# Output: 1 + 2 = 3
#------------------------------------------------------------

# 3.  Create two variables and assign a number to each of them. Then create a third variable and assign to it the sum of the first two. Print all three to the screen like so: 3 + 7 = 10.
a = 2
b = 4
puts "2 + 4 = #{a + b}"
