class Person
  def greet
    puts "hello"
  end
end


class Person
  def greet_with_log
    puts "calling method"
    greet_without_log
    puts "method called"
  end

  alias_method :greet_without_log, :greet
  alias_method :greet, :greet_with_log
end

Person.new.greet
