# Solution to 'Injected and Rejected' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/injected-and-rejected

def sum_over_50(arr)
  arr.reject {|e| e<= 50}.inject(0){|s,v| s+=v}
end

assert_equal sum_over_50([29, 52, 77, 102]), 231
assert_equal sum_over_50([5, 11, 50]), 0
assert_equal sum_over_50([4, 8, 15, 16, 23, 42]), 0
assert_equal sum_over_50([300, 22, 1, 55, 42]), 355