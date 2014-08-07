require "pry"

class Dessert
  attr_accessor :name
  # Your attr_accessor will 
  
  def overview
    "#{@name} is #{@qualities}.join(', ')."
  end
  
  def good?
    coreys_favorite = "steak"
    # coreys_favorite is a local variable and that variable only applies within the scope of the method.
    # 
  
  def initialize(name) 
    # The parameter (name) is setting what the user must pass through it to set the new attribute to a variable.
    @name = name
    @qualities = []
    # qualities is now a empty array
  end
  
  def add_quality(q)
    @qualities << q
    # The q is used for setting a value so the user can input any value and placing it in the qualities array.
    # If it was a string "crunchy" the user would not be able to add their own input for the array.
  end
  
  def not_actually_an_appetizer?
    if @name == coreys_favorite
      # coreys_favorite here does not refer back to the good? method above because it's within the scope of this block.
      true
    else
      false
    end
  end
  
  
  def give_me_the_name
    # Calling this name <variable>.give_me_the_name will call upon the name that you set in the initialize method above.
    @name
  end
end

binding.pry