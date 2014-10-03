require 'drb/drb'
require 'pry'

DRb.start_service

math_service = DRbObject.new_with_uri("druby://localhost:3030")
binding.pry
sum = math_service.add(2,3)
puts sum
puts math_service.class
puts math_service.to_s
