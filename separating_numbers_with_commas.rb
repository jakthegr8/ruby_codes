# Solution to 'Separating Numbers with Commas' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/separating-numbers-with-commas

def separate_with_comma(n)
  n.to_s.reverse.chars.each_slice(3).map {|s| s.join}.join(',').reverse
end

assert_equal         "1", separate_with_comma(1)
assert_equal        "10", separate_with_comma(10)
assert_equal       "100", separate_with_comma(100)
assert_equal     "1,000", separate_with_comma(1000)
assert_equal    "10,000", separate_with_comma(10000)
assert_equal   "100,000", separate_with_comma(100000)
assert_equal "1,000,000", separate_with_comma(1000000)