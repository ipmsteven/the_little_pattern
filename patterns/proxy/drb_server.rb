require 'drb/drb'

class MathService
  def add(a, b)
    a + b
  end
  def inspect
    'inspect'
  end
  def to_s
    "math_service"
  end
end

math_service = MathService.new
DRb.start_service("druby://localhost:3030", math_service)
DRb.thread.join
