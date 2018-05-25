# Solution to 'Blackjack' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/blackjack

def twenty_one?(*args)
  args.inject(:+) == 21
end

assert_equal twenty_one?(3, 4, 5, 6, 3), true
assert_equal twenty_one?(3, 11, 10), false
assert_equal twenty_one?(10, 11), true
assert_equal twenty_one?(10, 10), false