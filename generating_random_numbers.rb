# Solution to 'Generating Random Numbers' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/generating-random-numbers

a = rand(100..500)
b = rand(100..500)
c = rand(100..500)
d = rand(100..500)

assert_equal (a > 99 && a < 501), true
assert_equal (b > 99 && b < 501), true
assert_equal (c > 99 && c < 501), true
assert_equal (d > 99 && d < 501), true