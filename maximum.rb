# Solution to 'Maximum' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/maximum

def maximum(arr)
  max = 0
  arr.each{|ele| max = ele if ele > max}
  max
end

assert_equal maximum([2, 42, 22, 02]), 42
assert_equal maximum([-2, 0, 33, 304, 2, -2]), 304
assert_equal maximum([1]), 1