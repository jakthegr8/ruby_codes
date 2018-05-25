# Solution to 'The Lambda Lambda Lambda Fraternity' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/the-lambda-lambda-lambda-fraternity

even_check = -> *args { args.all? &:even? }

assert_equal [[2, 4], [1, 2], [8, 12]].select{|arr| even_check.call(*arr)}, [[2, 4], [8, 12]]
assert_equal even_check.call(42), true
assert_equal [[2, 4], [2, 1], [8, 11]].select{|arr| even_check.call(*arr)}, [[2, 4]]