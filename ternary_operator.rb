# Solution to 'Ternary Operator' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/ternary-operator

a = "Miles O'Brien"
b = "Barack Obama"

assert_equal ((a =~ /[ ]\w'/) ? 'Irish' : 'Not Irish'), "Irish"
assert_equal ((b =~ /[ ]\w'/) ? 'Irish' : 'Not Irish'), "Not Irish"