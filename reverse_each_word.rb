# Solution to 'Reverse Each Word' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/reverse-each-word

def reverse_each_word(sentence)
  n = ""
  sentence.split(' ').each do |w|
    c = w.length
    nc = ''
    while(c >= 1) do
      c-=1
      nc+=w[c]
    end
    n+= " #{nc}"
 end
 n.strip
end

assert_equal "olleH ,ereht dna woh era ?uoy", reverse_each_word("Hello there, and how are you?")