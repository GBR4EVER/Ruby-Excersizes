# 1. Write a program that uses a loop (any type) to count from 1 to 10 on-screen.
counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end
print "--------------------\n"
# Loop methods will continue to cycle until you command the method to end or using a key statement proceeded by the break command.
# There are multiple loop methods.  I could use a until loop for the same problem shown above
# For example
counter = 11
until counter > 20
  puts counter
  counter += 1
end
print "---------------------\n"
# These two loops together will output 1 - 20 each with a new line.
# Make sure to always end your loops or use a safe guard break command so the loop doesn't continue you on infinitely.  This can make your computer CRASH!!
#------------------------------------------------------------------------

# 2. Write a program that uses a loop (any type) to count down from 10 to 1 on-screen.
counter = 10
while counter > 0
  puts counter
  counter = counter - 1
end
print "---------------------\n"
# This is basically the same question as #1 but instead you are in descending order from 10 to 1.
# Same methodology just reverse your operations and change your values (integers).
# You could do the same thing with 20 - 11 using the until method.
print "---------------------\n"
counter = 20
until counter < 11
  puts counter
  counter -= 1
end

#--------------------------------------------------------------------------

# 3. Write a program that counts from 1 to 100 by 2's. Now make it work by 3's. Now have it count from 1 to 100 by any (positive) increment the user desires.
print "---------------------\n"

counter = 2
while counter < 101
  puts counter
  counter = counter + 2
end

print "----------------------\n"

counter = 3
while counter < 101
  puts counter
  counter = counter + 3
end

print "-----------------------\n"

print "Give me a number, I'll count it to 100\n"
number = gets.chomp.to_i

while number < 101
  puts number
  number += 1
end

print "------------------------\n"
#-----------------------------------------------------------------------------

# 4. Learn how to use ranges (both inclusive and exclusive) to do numeric iteration.
# When using ranges, we decide what two integers or values we want set our range from beginning to end.
# So if we want to display all the intergers 1 through 15 we place .. in between the two values to tell the console to include all numbers within the range.  This would be a inclusive iteration.
# For Example
for num in 1..15
  puts num
end

print "-------------------------\n"

# If we didn't want to include the last integer of our range (max value)
# We would add one more ... to the range between the two integers.
# For Example
for num in 1...15
  puts num
end
#------------------------------------------------------------------------------
print "--------------------------\n"

# 5. Write a program which prompts the user for a positive odd number, and which keeps prompting the user until they successfully input such a number.

print "Please enter a odd number\n"
number = gets.chomp.to_i

while number % 2 == 0
  puts "You entered a even number, odd please!"
  number = gets.chomp.to_i
  break if number % 2 != 0
end
# Here we used the break command to stop the loop if the obtained integer is odd. Without this command, the loop would continue to run.
puts "Great you entered a odd number!"

print "---------------------------\n"
#-------------------------------------------------------------------------------

# 6. Implement the Collatz Conjecture. Print out each step of the process, and keep track of how many steps it takes to arrive at 1.
# The Collatz Conjecture is a mathmatical proccess that when taking any natural number (n) If n is even, divide it by 2 to get n / 2. If n is odd, multiply it by 3 and add 1 to obtain 3n + 1. Repeat the process till you reach 1.
def collatz()
  print "Please enter a positive number\n"
  number = gets.chomp.to_i
  while number != 1 do
    if number % 2 == 0
      number = number / 2
      puts number
    else number % 2 != 0
      number = number * 3 + 1
      puts number
      break if number == 1
    end
  end
end
collatz

print "-----------------------------\n"
#---------------------------------------------------------------------------------

# 7. Write a program which prints the integer factors of a positive integer (for example, the integer factors of 28 are 1, 2, 4, 7, 14, and 28).
# number = 44
# until number == 1
#   number / 2
#
#---------------------------------------------------------------------------------

# 8. Write a program which, for any positive integer n, figures out n!. For example, 7! is 7 * 6 * 5 * 4 * 3 * 2 * 1.
     