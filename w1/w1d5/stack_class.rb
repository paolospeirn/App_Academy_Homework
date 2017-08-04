class Stack

  attr_accessor :stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.pop
  end

  def show
    return @stack #proper solution was @stack.dup, both show the mem id.
  end
end
