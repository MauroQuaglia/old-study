class Parent
  def initialize
  puts "initialize 2"
  end
  def say_hello
    puts "Hello from #{self}"
  end
  def my_test(one, two)
    puts "From #{self} - #{one} - #{two}"
  end
end