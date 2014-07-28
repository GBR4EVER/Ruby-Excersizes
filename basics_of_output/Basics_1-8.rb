# 1. Write a program that prints Hello World! to the console.
puts "Hello World!"
#-------------------------------------------------------------

# 2. Write a program that prints "Hello" and "World" to the screen, both on their own lines, and each with their own puts statement.
puts "Hello", "World"
#-------------------------------------------------------------

# 3. Do the same as #2, but with only one print statement (Hint: Use \n)
puts "Hello \n World"
#-------------------------------------------------------------

# 4. Figure out what the different escape sequences do.
# These are common escape sequences that can appear inside double qoutes
# \" - double qoutes
# \\ - single backslash
# \b - backspace
# \s - space
# \t - tab
# \r - carriage return
# Here is some example code for some of these sequences
puts "Hello\t\tworld"
# Output:
# Hello       world
puts "Hello\b\b\b\b\bGoodbye world"
# Output:
# Goodbye world
puts "Hello\rStart over world"
# Output:
# Start over world
#--------------------------------------------------------------

# 5. Use String interpolation to do output. Do this with numbers and text. Does it matter whether you do string interpolation with a double-quoted string (like "#{1 + 1}") versus single-quoted strings (like '#{1 + 1}')?
puts "#{5 + 5}"
#--------------------------------------------------------------

# 6. Use format sequences (like %s) to do some output. Does it work with double quoted strings? With single quoted strings?
#--------------------------------------------------------------

# 7. What happens if you use string concatenation, i.e. puts "hel" + "lo"?
puts "hel" + "lo"
# Output:
# hello - String concatenation adds together the strings into one single string.
#--------------------------------------------------------------

# 8. What happens if you try to multiply a string, i.e. puts "Hello " * 3
puts "Hello" * 3
# Output:
# HelloHelloHello - Will multiply the single string by the given integer.
#--------------------------------------------------------------
