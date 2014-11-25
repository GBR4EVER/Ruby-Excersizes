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
# Now if you wanted to have two options for an if statement to branch to, you would implement the elseif statement.
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
print "Give me a positive number\n"
n = gets.chomp.to_i

if n > 0
  puts "Valid"
else n >= 0
  puts "Invalid"
end

#-------------------------------------------------------------

# 4. Write a program which prompts the user for a number and outputs "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
print "Give me a number between 1 and 10\n"
n = gets.chomp.to_i
  if (1..10).include?(n)
    puts "Valid"
  else (11..20).include?(n)
    puts "Invalid"
end

#-------------------------------------------------------------

# 5. Write a program which prompts the user for an integer and outputs whether than integer is even or odd (hint: even numbers have a remainder of 0 when divided by 2; odd numbers have a remainder of 1 when divided by 2)
print "Please give me a number\n"
number = gets.chomp.to_i

if number % 2 == 0
  puts "That is a even number!"
else number % 2 == 1
  puts "That is a odd number"
end

#-------------------------------------------------------------

# 6. Write a program which asks the user for 3 numbers and sorts them from least to greatest using nothing but if, elsif and else statements. Output the result.
print "Please give me 3 numbers\n"
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
# The iterators sort from greatest to least
if (a < b && b > c && a < c)
  puts b, c, a;
elsif (a > b && b > c && a > c)
  puts a, b, c;
else (a < b && b < c && a < c)
  puts c, b, a;
end

#--------------------------------------------------------------

# 7. Write a program which prompts the user for an all-caps string and which then checks to see if that string is indeed all-caps.
print "Please enter a word in all caps\n"
caps = gets.chomp.to_s
if caps == caps.upcase
  puts "Thank you"
elsif caps == caps.downcase
  puts "Invalid, it must be all caps!"
end

#---------------------------------------------------------------

# 8. Create a menu (perhaps for food or drinks?) which asks the user to input a number corresponding to their choice of item, and which then prints "Delivering [that item]." Use a case statement. Make sure to account for invalid inputs using an else.
print "Enter your combo number\n"
combo = gets.chomp.to_i
case combo
when 1
  puts "Burger"
when 2
  puts "Nuggets"
when 3
  puts "Chicken"
when 4
  puts "Fish"
else
  puts "We only have combos 1 through 4\n"
end

puts "Delivering #{combo}"

#-------------------------------------------------------------

# 9. Learn how to use the ternary operator.
# The ternary operator is puts a ? b : c
# In grammatical terms below:
# if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this

# However, in Ruby, if is also an expression so: if a then b else c end === a ? b : c, except for precedence issues. Both are expressions.
# Some Examples.
# puts (if 1 then 2 else 3 end) # => 2

# puts 1 ? 2 : 3                # => 2

# x = if 1 then 2 else 3 end
# puts x                        # => 2
#---------------------------------------------------------------

# 10. Learn how to use the unless keyword.
# The unless keyword or conditional is almost the same as using a if conditional.

# For example:

# raise InvalidFormat unless AllowedFormats.include?(format)

# When actually it read sbetter like so:

# raise InvalidFormat if !AllowedFormats.include?(format)

#---------------------------------------------------------------

# 11. Prompt the user for a positive odd number (or a positive even number, or...). Write a program that uses a nested if-statement to determine if the user's input fulfills the conditions. Now write one that uses the logical operators (&& and/or ||) to do the same test, but in less time.
def nested
  print "Enter in a odd number"
  z = gets.chomp.to_i
  if z % 2 == 1
    puts "That is a odd number, thank you."
    if z % 2 == 0
      puts "That number won't work, it's even!"
    else
      puts "Cool"
    end
  else
    puts "Z needs to be a odd number."
  end
end
nested
