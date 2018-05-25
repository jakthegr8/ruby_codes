class Bubblesort
  def initialize(unsorted_array, order='ASC')
    @input_array = unsorted_array
    @len = unsorted_array.length
    @opr = order == 'ASC' ? '>' : '<'
  end
  
  def sort
    @len.times do
      @input_array.each_with_index do |ele, i|
        break if i+2 > @len 
        @input_array[i],  @input_array[i+1] =
          @input_array[i+1], ele if ele.to_i.send(@opr, @input_array[i+1].to_i)
      end
    end
    @input_array
  end  
end

p Bubblesort.new([98,23,54,6,nil,'string',90,0,5,4,1,2], 'ASC').sort
p Bubblesort.new([98,23,54,6,nil,90,0,5,4,1,2], 'DESC').sort
p Bubblesort.new([98,23,54,6,nil,90,0,5,4,1,2]).sort