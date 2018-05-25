# Solution to 'FizzBuzz' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/fizzbuzz

def fizzbuzz(x)
  if (x % 3) == 0 &&  (x % 5) == 0
    'FizzBuzz'
  elsif (x % 3) == 0
    'Fizz'
  elsif (x % 5) == 0
    'Buzz'
  end
end

assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"