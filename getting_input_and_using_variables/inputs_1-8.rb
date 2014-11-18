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
c = "#{a + b}"
puts "#{a} + #{b} = #{c}"
# Output: 2 + 4 = 6
#-------------------------------------------------------------

# 4. Do the same as #2, but see what happens if one of the numbers is a floating point number (e.g. 4.2). What happens if both numbers are floating point numbers?
a = 2.4
b = 4
c = "#{a + b}"
puts "#{a} + #{b} = #{c}"
# Output: 2.4 + 4 = 6.4
#-------------------------------------------------------------

# 5. Research the different truth values: true, false, and nil. What does nil mean within Ruby?
# The console will show the value of the last expression used in your code. If the last expression was empty or returned nil (the ruby object that represents "nothingness") you'll see ==> nil in the console.
#-------------------------------------------------------------

# 6. Use gets.chomp to collect input from the user and store it in a variable. Write a program that asks the user for their name, then print their name to the screen. Write a program that asks the user for their age, and then print that age to the screen.
print "What is your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What is your last name?"
last_name = gets.chomp
last_name.capitalize!

print "And how old are you?"
how_old_are_you = gets.chomp
how_old_are_you.to_s

puts "Your name is #{first_name} #{last_name} and you are #{how_old_are_you} years of age!"
# First your print command will ask the user for input and retain the information with gets.chomp after you have set the variable to whatever specificity.
# .capitalize! - will capitalize the first letter of the given characters
# This is another form of interpolation at work.
#---------------------------------------------------------------

# 7. gets.chomp collects input as Strings (text). Learn how to use gets.chomp.to_i to collect integers, as well as gets.chomp.to_f to collect floating point numbers. What happens if you try to call gets.chomp.to_i when a floating point number is entered? How about when a word or letter is entered? What happens if you use gets.chomp.to_f and input an integer? A word?

print "What is your favorite number?"
number = gets.chomp.to_i
puts "\n #{number} is your favorite number!"

# If the gets.chomp command is set to .to_i it will convert whatever data into a integer, so if you enter a letter or word,  it will return 0.
# If you enter a float number such as 5.3, it will return you the first value or integer 5.
#----------------------------------------------------------------

# 8. What is the difference between puts 1 + 1 and puts "1" + "1"? Why does this behavior happen?

# puts 1 + 1 will act upon taking the integers and adding them together and will output the sum.
# puts "1" + "1" will recognize "1" as a string and will group the two strings together outputting 11
#-----------------------------------------------------------------

