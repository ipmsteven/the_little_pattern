module PersonLogger
  def greet
    puts "calling method"
    super
    puts "method called"
  end
end

class Person
  prepend PersonLogger
  def greet
    puts "hello"
  end
end


Person.new.greet
