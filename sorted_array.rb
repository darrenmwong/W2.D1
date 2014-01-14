class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr = [])
    @internal_arr = []
    input_arr.each {|new_ele| add(new_ele)}

  end

  def add(new_ele)
    @internal_arr.insert(first_larger_index(new_ele), new_ele)

  end

  def size
    @internal_arr.size
  end

  def [](index)
    return @internal_arr[index]

  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)

    mid_index = (start_ind + end_ind)/2
    if start_ind >= end_ind
      return end_ind
    elsif @internal_arr[mid_index] == target
      return mid_index
    elsif target < @internal_arr[mid_index]
      return first_larger_index(target, start_ind, mid_index)
    else target > @internal_arr[mid_index]
      return first_larger_index(target, mid_index + 1, end_ind)
    end
  end


  def index(target)
    @internal_arr.find_index(target)
end
end
