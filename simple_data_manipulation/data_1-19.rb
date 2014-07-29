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
# <=> | 	Combined comparison operator. Returns 0 if first operand equals second, 1 if first operand is greater than the second and -1 if first operand is less than the second.

print "Can you please give me two numbers starting with the first one?"
a = gets.chomp.to_i

print "then the second number please?"
b = gets.chomp.to_i

print"I am now going to operate #{a} & #{b}, watch this!"

operation_array = [a, b]

operation_array.each { |x| puts "#{a}" + "#{b}" }

