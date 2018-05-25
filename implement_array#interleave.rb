# Solution to 'Implement Array#interleave' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/implement-array-hash-interleave

class Array
  def interleave(*args)
    args.flatten.each do |ele|
      insert((ele.to_i-1), ele)
    end
    compact
  end
end

assert_equal [1, 3, 5].interleave(2, 4, 6), [1, 2, 3, 4, 5, 6]
assert_equal [1, 3, 5].interleave([2, 4]), [1, 2, 3, 4, 5]
assert_equal [1, 3, 5].interleave("2", "4"), [1, "2", 3, "4", 5]
assert_equal [].interleave(2, 4, 6), [2, 4, 6]
assert_equal [1, 2, 3].interleave(), [1, 2, 3]