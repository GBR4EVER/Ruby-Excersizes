# 1. Know how to use if, elsif, and else statements to create branching boolean logic trees.
# The if, elseif, and else statements are iterators, that are used for the branching concept/
# For Example
puts "What is you name?"
name = gets.chomp
if name == "Corey"
  puts "What a great name!"
else
  puts "Why would you have that as name?\n"
  puts "I don't think we can be friends :("
end
# If what comes after if is true, then that code is ran. If not, we would not run the code.
# If you would want to create a exception to the if statement you can use else that if the if statement is not true, it will move down the next line of code to the else statement and output that code.
# Now if you wanted to have two options for if statement to branch to you would implement the elseif statement.
# For Example
if 5 > 7
  puts "something is wrong"
elsif 5 < 7
  puts "true"
else
  "they are both equal"
end
#---------------------------------------------------------

# 2. Know how to use case and when statements to create switches.
# In case statements we test on a condition that we give to a case statement, we then walk through a set of possible matches each of which is contained in a when statement.
# For Example
print "Enter your grade:\n"
grade = gets.chomp.capitalize!
case grade
when "A"
  puts "Exceptional!"
when "B"
  puts "Good!"
when "C"
  puts "Average"
when "D"
  puts "You need help!"
else
  puts "That's not a grade"
end
#------------------------------------------------------------

# 3. Write a program which prompts the user for a number, outputs "Valid" if the number is positive, or "Invalid" if the number is less than or equal to zero.
print "Give me a number, any number\n"
n = gets.chomp.to_i

if n <= 0
  puts "Valid"
else n < 0
  puts "Invalid"
end
#-------------------------------------------------------------

# 4. Write a program which prompts the user for a number and outputs "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
print "Give me a number between 1 and 10"
n = gets.chomp.to_i

case n
when n == 1..10
  puts "Valid"
when n < 10
  puts "Invalid"
end

  