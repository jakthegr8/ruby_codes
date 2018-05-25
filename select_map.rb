# Solution to 'Select Map' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/select-map

assert_equal ["1", 2, "3", 4, "5"].grep(/[1-5]/){ |e| e.succ }, ["2", "4", "6"]
assert_equal [0, 1, 3, 5, 6].grep(1..5, &:succ), [2, 4, 6]
assert_equal ["1", "2", "3", "4", "5"].grep(proc{|ele| ele.to_i%2 ==1}){ |e| e.succ }, ["2", "4", "6"]
assert_equal [1, 2, 3, 4, 5].grep(proc{|ele| ele.to_i%2 ==1}, &:succ), [2, 4, 6]