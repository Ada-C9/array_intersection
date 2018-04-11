# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  return [] if array1 == nil || array2 == nil || array1.empty? || array2.empty?
  intersection_array = []
  array1.length.times do | j |
    array2.length.times do | k |
      if array1[j] == array2[k]
        intersection_array << array1[j]
      end
    end
  end
  intersection_array
end
