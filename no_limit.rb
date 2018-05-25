# Solution to 'No Limit' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/no-limit

assert_equal ["1", "2", "3"], "1,2,3".split(',', -1)
assert_equal ["", "", "1", "2", "3"], ",,1,2,3".split(',', -1)
assert_equal ["1", "2", "3", "", ""], "1,2,3,,".split(',', -1)