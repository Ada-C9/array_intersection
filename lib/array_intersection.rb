# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  return [] if array1 == nil || array2 == nil

  new_array = []

  array1.each do |num|
    array2.each do |num2|
      if num == num2
        new_array << num2
      end
    end
  end

  return new_array

end
