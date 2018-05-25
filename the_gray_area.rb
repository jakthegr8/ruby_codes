# Solution to 'The Gray Area' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/the-gray-area

class TrueClass
  def == x
    return !x
  end
end

assert_equal true, false