# Solution to 'Counting Elements in Array' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/counting-elements-in-array

test = ['cat', 'dog', 'fish', 'fish']

def count(array)
   hm={};
   array.each{| ele| (hm[ele] ? (hm[ele]+=1) : (hm[ele] = 1))};
   hm
end

assert_equal ({ 'cat' => 1, 'dog' => 1, 'fish' => 2 }), count(test)
