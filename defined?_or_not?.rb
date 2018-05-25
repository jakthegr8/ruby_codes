# Solution to 'Defined? Or not?' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/defined-ques--or-not-ques-

if false
  w = :whatever
end

assert_equal defined?(w) != nil, true