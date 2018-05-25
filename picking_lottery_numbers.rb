# Solution to 'Picking Lottery Numbers' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/picking-lottery-numbers

superset = (1..500).to_a
week1 = superset.sample(5)
week2 = superset.sample(5)

assert_equal (week1.length == 5 && week2.length == 5), true
assert_equal (week1.sort != week2.sort), true