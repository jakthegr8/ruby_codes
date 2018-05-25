# Solution to 'Pack Template UTF-8' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/pack-template-utf-8

# -*- coding: utf-8 -*-
assert_equal [0, 1].pack('U*'), "\000\001"
assert_equal [0x7f].pack('U*'), "\177"
assert_equal [0x80].pack('U*'), "\302\200"
assert_equal "\u3042".unpack('U*'), [0x3042]
assert_equal "あいうえお".unpack('U*'), [12354, 12356, 12358, 12360, 12362]
assert_equal [12354, 12356, 12358, 12360, 12362].pack('U*'), "あいうえお"