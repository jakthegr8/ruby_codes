# Solution to 'Constant Rule' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/constant-rule

CONST = rand
class Foo
  CONST = rand(100)
  def foo
    return self.class.superclass::CONST
  end
end

assert_equal Foo.new.foo, CONST