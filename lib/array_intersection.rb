# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  common_elements = []
  if array1 == nil || array2 == nil
    return []
  elsif array1 == [] || array2 == []
    return []
  end

  len1 = array1.length
  len2 = array2.length

  i = 0
  while i < len1
    j = 0
    while j < len2
      if array1[i] == array2[j]
         common_elements << array2[j]
         array2.delete_at(j)
      end
      j += 1
    end
    i += 1
  end

  return common_elements
end
