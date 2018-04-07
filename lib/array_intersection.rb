# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  inter_array = []
  return inter_array if array1 == nil || array2 == nil

  array1.length.times do |i|

    array2.length.times do |j|
      if array1[i] == array2[j]
        inter_array << array1[i]
      end
    end

  end

  return inter_array
end
