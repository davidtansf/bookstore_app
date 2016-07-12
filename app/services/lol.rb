class Hi
  @@a = 1 # class variable
  @b  = 2 # class instance variable

  def initialize
    @c = 3 # instance variable
  end

  def test # instance method, works on objects of class A
    puts @@a # => 1
    puts @b  # => nil, there is no instance variable @b
    puts @c  # => 3 # we defined this instance variable in the initialize
  end
end
puts Hi.class_variables
