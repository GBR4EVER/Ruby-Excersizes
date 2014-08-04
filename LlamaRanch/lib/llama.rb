#LlamaRanch/lib/llama.rb
class Llama
  attr_reader :name, :age

  def initialize( name, age )
    @name = name
    @age = if age.class != Fixnum
      0
    elsif age >= 0
      age
    else
      0
    end
  end

  def have_a_birthday
    @age += 1
  end


end

