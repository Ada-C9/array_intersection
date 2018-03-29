# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  if array1.class != Array || array2.class != Array
    return []
  end

  array = []
  
  array1.each do |num|
    array2.each do |num2|
      if num == num2
        array << num2
      end
    end
  end

  return array

end
