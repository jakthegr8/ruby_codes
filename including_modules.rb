# Solution to 'Including Modules' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/including-modules

module A
  def name
    "a"
  end
end

module B
  def name
    "b"
  end
end

class C
  include A
  include B
end

class D
  include B, A
end

assert_equal C.new.name, "b"
assert_equal D.new.name, "b"