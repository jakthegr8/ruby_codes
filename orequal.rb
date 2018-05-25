# Solution to 'Or Equal' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/or-equal

b = 8
c = false

a ||= "rubeque"
b ||= "rubeque"
c ||= "rubeque"

assert_equal a, "rubeque"
assert_equal b, 8
assert_equal c, 'rubeque'