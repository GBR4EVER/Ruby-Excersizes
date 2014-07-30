# 1. Learn how to create a method.
def call
  puts "This is my method"
end
call
# Methods are used to bundle or repeate multiple statements into a single unit.
# When creating a method you first must define the method by giving it a name or variable in order to call the method.
# Sometimes you may need to give your method some parameters to abide by. If this is the case, your defined method would look like this: def call( p1, p2 )
#---------------------------------------------------------

# 2. Learn the meanings of each of these terms regarding methods:

# Method signature/name - This is the name that you will call the method by when you want the method to run.
# Parameters - The parameters will always be surrounded by () and tells your method to remember these when running your the functions within the method. 
# The most important drawback to using methods with parameters is that you need to remember the number of parameters whenever you call such methods. For example, if a method accepts three parameters and you pass only two, then Ruby displays an error.
# Arguments (how are parameters and arguments different?)
# Method call - Once you end your method, you may want to call by simple typing the def name of your method which will run the functions you specified within the method.
# Return values - Every method in Ruby returns a value by default. This returned value will be the value of the last statement.
# For Example
def test
  a = 30
  b = 60
  c = 90
  #Everytime ruby will display the last variable in the method, in this case, 90.
end
puts test
# The return statement in ruby is used to return one or more values from a Ruby Method.
# For Example
def test2
  a = 4
  b = 6
  c = 8
  return a, b, c 
  # Asking for all values will output all three values on their own lines. In this case 4 6 8.
end
var = test2
puts test2
#-----------------------------------------------------------

# 3. Create a method called hello_world which takes no arguments and which prints Hello, World to the screen. Call this method.
def hello_world
  puts "Hello, World"
end
puts hello_world
#-----------------------------------------------------------

# 4. Create a method called greeting which takes a single argument (a name) and prints Hello, #{name} to the screen. Call this method with a few different names.
def greeting
  puts "please put in a name"
  name = gets.chomp.upcase
  puts "#{name}"
end
puts greeting
#------------------------------------------------------------

# 5. Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
def sum_these_numbers
  n1 = 2
  n2 = 4

  
  


  