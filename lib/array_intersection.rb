# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  intersect_array = []
  if array1 == nil || array2 == nil
    return intersect_array
  end
  array1.length.times do |i|
    array2.length.times do |j|
      if array1[i] == array2[j]
        intersect_array << array1[i]
      end
    end
  end
  return intersect_array
end
