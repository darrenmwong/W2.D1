class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr = [])
    @internal_arr = []
    input_arr.each {|split| add(split)}
  end

  def add(new_ele)
    @internal_arr.insert(first_larger_index(new_ele), new_ele)
    raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @internal_arr.size
  end

  def [](index)
    raise NotImplementedError.new("You need to implement the [] method!")
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
  
  # i = start_ind
  #   @internal_arr.slice(start_ind..end_ind).each { |x| 
  #     i += 1 if target > x
  #   }
  #   return i
  # end

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
    raise NotImplementedError.new("You need to implement the index method!")
  end
end
