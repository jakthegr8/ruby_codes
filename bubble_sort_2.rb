class BubbleSort
  def self.sort(inA)
    n = inA.length
    1.upto(n-1) do |k|
      swapped = false
      0.upto(n-k-1) do |i|
        inA[i], inA[i+1] = inA[i+1], inA[i] if inA[i] > inA[i+1]
      end
    end
    inA
  end
end

inA = [1, 10,7, 6, 9]
puts BubbleSort.sort(inA)