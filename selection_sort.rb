class SelectionSort
  def initialize(unsorted_array, order='ASC')
    @input_array = unsorted_array
    @len = unsorted_array.length
    @opr = order == 'ASC' ? '>' : '<'
    @current_min_index = 0
  end
  
  def sort
    @len.times do |i|
      index_min = i
      (i + 1).upto(@len) do |j|
        # Find the minimum value's index
        index_min = j if @input_array[j].to_i < @input_array[index_min].to_i
      end
      @input_array[i], @input_array[index_min] = @input_array[index_min], @input_array[i] if index_min != i
    end
    @input_array
  end
end

p 'Input: [98,23,54,6,nil,90,0,5,4,1,2]'
p SelectionSort.new([98,23,54,6,nil,90,0,5,4,1,2]).sort