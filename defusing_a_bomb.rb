# Solution to 'Defusing a Bomb' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/defusing-a-bomb

class NilClass
 def length
   0
 end
 
 def reverse
  ''
 end
end

assert_equal nil.length == 5, false
assert_equal nil.reverse == "rubeque", false