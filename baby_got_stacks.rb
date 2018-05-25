# Solution to 'Baby Got Stacks' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/baby-got-stacks

class Stack
  def initialize(stack)
    @stack = stack
  end

  def pop(*idx)
    result = @stack.pop(*idx)
    return result.reverse if result.is_a? Array
    result
  end

  def push(items)
    @stack.push(*items) == @stack
  end

  def to_a
    @stack
  end
end

stack = Stack.new([5, 6, 7, 8])

assert_equal stack.pop, 8
assert_equal stack.pop, 7
assert_equal stack.push([4, 2]), true
assert_equal stack.pop(3), [2, 4, 6]
assert_equal stack.to_a, [5]