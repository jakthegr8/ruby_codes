# Solution to 'Default Encoding' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/default-encoding

assert_equal "".encoding, Encoding::UTF_8
assert_equal "ascii compatible string".encoding, Encoding::UTF_8