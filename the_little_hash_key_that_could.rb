# Solution to 'The Little Hash Key that Could' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/the-little-hash-key-that-could

def key_for_min_value(hash)
  key = nil
  hash.each{|k,v| key = k if hash.values.min == v}
  key
end

assert_equal key_for_min_value({"k" => 2, "h" => 3, "j" => 1}), "j"
assert_equal key_for_min_value({"o" => 0, "z" => -2, "j" => 1}), "z"
assert_equal key_for_min_value({}), nil