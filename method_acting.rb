# Solution to 'Method Acting' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/method-acting

def dogs
  __callee__
end

def cats
  __callee__
end

def chunky_bacon
  __callee__
end

assert_equal dogs, :dogs
assert_equal cats, :cats
assert_equal chunky_bacon, :chunky_bacon