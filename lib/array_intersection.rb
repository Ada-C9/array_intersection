# Creates a new array to return the intersection of the two input arrays
# Time complexity is O(nm) because the inner loop executes m times for every nth execution of the outer loop
# Space complexity is O(1) because no additional memory is required for larger input (ie, longer array)
def intersection(array1, array2)
  array3 = []
  i = 0

  return array3 if array1 == nil || array2 == nil

  until array1[i] == nil
    j = 0

    until array2[j] == nil
      if array1[i] == array2[j]
        array3 << array2[j]
      end
      j += 1
    end

    i += 1
  end
  return array3
end
