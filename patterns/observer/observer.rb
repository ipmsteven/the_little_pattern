module Subject
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observer << observer
  end

  def delelte_observer(observer)
    @observer.delelte(observer)
  end

  def notify_observers
    @observer.each do |observer|
      observer.update(self)
    end
  end
end

class Employee
  include Subject

  attr_reader :name, :address
  attr_reader :salary

  def initialize(name, title, salary)
    super()
    @name   = name
    @title  = title
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end
end

