require "active_support/core_ext/module/aliasing"

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
  alias_method_chain :greet, :log
end

Person.new.greet
