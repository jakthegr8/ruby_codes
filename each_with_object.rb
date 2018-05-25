# Solution to 'Each With Object' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/each-with-object

def even_sum(arr)
  arr.each_with_object([]){ |v,a| a << v.reverse if v && (v.size % 2 == 0)}
end

assert_equal even_sum(["cat", "dog", "bird", "fish"]), ["drib", "hsif"]
assert_equal even_sum(["why", "chunky", nil, "lucky", "stiff"]), ["yknuhc"]
assert_equal even_sum(["rewsna", "hitch hiker", "si", "guide", "galaxies ", "24"]), ["answer", "is", "42"]