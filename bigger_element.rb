# Solution to 'Bigger element' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/bigger-element

def first_even(items)
  items.detect(&:even?)
end