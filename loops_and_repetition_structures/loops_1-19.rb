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


