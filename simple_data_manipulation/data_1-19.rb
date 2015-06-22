# 1. Learn about Ruby operator precedence with regard to arithmetic. How does it compare to the Order of Operations (PEMDAS) you learned in school? Learn what each of the operators (listed below) does, then write a program that asks the user for two numbers, then outputs the result of each of these operators on those numbers. Make sure you can describe, in your own words, what each operator does.
# + | Addition
# - | Subtraction
# * | Multipication
# / | Division
# % | Modulo - Modulo returns the remainder of division. For example, 25 % 7 would be 4, since 7 goes into 25 3 times with 4 left over.
# ** | Exponent
# = | Equal to
# == | Equals
# <, >, <=, >= | LESS THAN. Returns true if first operand is less than second operand. Otherwise returns false, | GREATER THAN | Returns true if first operand is greater than second operand. Otherwise returns false, | GREATER THEN OR EQUAL TO | Returns true if first operand is greater than or equal to second operand, Otherwise returns false, | LESS THAN OR EQUAL TO | Returns true if first operand is less than or equal to second operand. Otherwise returns false.
# <=> | 	Combined comparison operator. Returns 0 if first operand equals second, 1 if first operand is greater than the second and -1 if first operand is less than the second."

#---------------------------------------------------------------"

# 2. Write a program that fetches a number from the user, then doubles it, then outputs the result.
# Write a program that fetches a number from the user, squares it, then outputs the result.
def double
  print "Please give me a number.\n"
  x = gets.chomp.to_i
  y = x * 2
  puts y
end
double

def square
  print "Now give me another number.\n"
  x = gets.chomp.to_i
  y = x * x
  puts y
end
square

#-----------------------------------------------------------------

# 3. Write a program that prompts the user for two integers, then displays the integer quotient and integer result to the screen, like so: 7 / 3 = 2 r 1. Consider using string interpolation to make your life easier.

def qoutient
  print "Give me two numbers please.\n"
  x = gets.chomp.to_i
  y = gets.chomp.to_i
  w = x / y
  z = x % y
  puts "#{x} / #{y} = #{w} r #{z}"
end
qoutient

#-----------------------------------------------------------------

# 4. Write a program that converts a mixed number (integer, numerator, denominator) into an improper fraction, e.g. 3 1/2 = 7/2. This problem is much easier if, instead of dealing with the fraction as a whole, you handle its numerator and denominator separately.

def mix
  print "We are going to convert a mixed number into a improper fraction.\n"
  print "Now give me two numbers, first number being the numerator the second being the denominator.\n"
  x = gets.chomp.to_i
  y = gets.chomp.to_i
  z = y % x
  puts "#{z}_\n#{y}"
end
mix

#-----------------------------------------------------------------  
# 5. Write a program that takes a string, then uses the .upcase method to return the ALLCAPS version of that string, e.g. "Hello".upcase => "HELLO".

def all_caps
  caps = "This string is going to be all caps using the .upcase action!\n"
  puts caps.upcase
end
all_caps

#------------------------------------------------------------------

# 6. Write a program that collects an integer value for Fahrenheit temperature and then outputs the corresponding Celsius temperature.

def temp
  print "Please give me the temperature right now, I will give you the corresponding celcius temperature.\n"
  x = gets.chomp.to_f
  y = (x - 32) * 5.0 / 9.0
  puts "It is now #{y} celcius."
end
temp

#------------------------------------------------------------------

# 7. Write a program that calculates how to break a monetary value (expressed as 43.21, that is, without the dollar sign) into the simplest possible change (expressed as dollars, quarters, dimes, nickels, and pennies) NB: "Simplest" change just means the fewest number of bills and coins possible for a given amount. As a hint, you'll need to use % and /. It may also be easiest to convert the money amount from being in terms of dollars to being in terms of pennies (for example, $43.21 is 4321 pennies)

