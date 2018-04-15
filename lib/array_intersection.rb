# Creates a new array to return the intersection of the two input arrays

# array1 = [70, 90, 34, 21, 78, 42]
# array2 = [21, 67, 54, 29, 42, 30]
# expected_intersection = [21, 42]

def intersection(array1, array2)
  intersection = []
  if array1 == nil || array2 == nil
    return intersection
  end

  array1.length.times do |i|
    array2.length.times do |j|
      if array1[i] == array2[j]
        intersection << array1[i]
      end
    end
  end
  return intersection
end

  # Input: array1, array2
  # Output: integer(s) that are present in both arrays, or [] if none
  # check each element in the unsorted array against the sorted array
  # if that element != an element in sorted, delete it from the array
