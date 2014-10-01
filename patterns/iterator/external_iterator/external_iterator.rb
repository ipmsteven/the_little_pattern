class ArrayIterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = @array[@index]
    @index += 1
    value
  end
end

array = ['hello', 'world', 'wide']

i = ArrayIterator.new(array)

while i.has_next?
  puts i.next_item
end


# when you use an external iterator, the client drives the iteration.
# With an extenal iterator, you won't call next until you are good
# and ready for next element. With an internal iterator, by contrast,
# the aggregate relentlessly pushes the code block to accept item
# after item.
