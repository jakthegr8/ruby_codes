# Solution to 'Implement a Hash With Indifferent Access' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/implement-a-hash-with-indifferent-access

class HashWithIndifferentAccess
  def initialize(hash = {})
    @attributes = Hash.new
    hash.each { |key, val| self[key] = val }
  end

  def []=(key, value)
    @attributes[key.to_sym] = value
  end

  def [](key)
    @attributes[key.to_sym]
  end

  def self.[](*arr)
    self.new(Hash[*arr])
  end
end

composers = HashWithIndifferentAccess.new
composers[:Janacek] = "Leos Janacek"
composers["Sweelinck"] = "Jan Pieterszoon Sweelinck"

mathematicians = HashWithIndifferentAccess["Yutaka", "Taniyama", :Alonzo, "Church"]

assert_equal composers["Janacek"], "Leos Janacek"
assert_equal composers[:Sweelinck], "Jan Pieterszoon Sweelinck"
assert_equal mathematicians[:Yutaka], "Taniyama"
assert_equal (mathematicians["Alonzo"] == mathematicians[:Alonzo]), true