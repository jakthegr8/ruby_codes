# Solution to 'Random Boolean' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/random-boolean

def random_boolean
  rand < rand
end

array = []

100.times do
  if random_boolean
    array << :dummy
  end
end

assert_equal (1..100) === array.size, true
assert_equal array.size != 100, true