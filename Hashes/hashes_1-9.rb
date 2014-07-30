# 1. What are hashes used for? Why might you use a hash? (Hint: we'll be using LOTS of hashes in this course)
# Hashes are somewhat liek arrays in that they store values and keys of informtion.
# Each value will have it's own designated key.
# Imagine a hash is a two column table with the keys on the left side, and it's corresponding weapon is paired on the right side of the table.
# You can store any type of values together e.g. strings, integers, arrays, etc.
# The => designates the key paired with the value.
my_hash = { "apples" => "juice", "oranges" => "bush", "bannana" => "tree" }
#-----------------------------------------------------------------------------

# 2. Learn how to create a Hash that contains at least one key/value pair. What is the difference between a key and a value? What types of data can be used as keys? Can you have duplicate keys in a hash? What about duplicate values? What types of data can be used as values? Given a key, how do you access the corresponding value in the hash? Given a value, how do you look up the keys that have that value? How would you add additional keys to the hash?
# Any data can be placed into a hash. the key is a paired with it's value. So when you attempt to access a key you will be returned with the corresponding value of that key.
# For Example
puts my_hash[ "apples", "oranges", "bannana"]
#------------------------------------------------------------------------------

# 3. Learn what symbols are (and how they're different from Strings). Create a hash which uses at least two symbols as keys, and where each key has a value. Learn how to convert between strings and symbols.
# Symbols are a more conventional object for our code. You can assign a symbol to any other type of value.
# For Example
new_hash = { :golf => "hole", :basket => "ball", :tennis => "court" }

# So with symbols, we need to have a : to label it.  It helps us differiate better between are keys and values and we don't need to use the hash rocket =>
#-------------------------------------------------------------------------------

# 4. What is the difference between an array and a hash? Why might you use an array instead of a hash? Why might you use a hash instead of an array?
# An array would be used as a collection of local values that can be assigned as one variable.  More then likely you would want to use a array if you had a collection of information or data that you would want access that is independent from another set of values.
# On the other hand if you had a set of values that are different from one another but are also related by category or some specificity, you would want to use a hash so you can assign certain keys to certain values.
#-------------------------------------------------------------------------------

# 5. Hashes are often used to represent attributes that do not have corresponding behaviors (i.e. the data doesn't do anything). For example, I could create a Driver's License hash that contains a :name, :id, and :age key. Adjust the values to match your own information (or information corresponding to someone whom you just made up).
#my_id = {:name "Corey", :id "nebraska", :age 24}

