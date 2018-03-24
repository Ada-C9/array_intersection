# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  intersection = []
  return intersection if array1 == nil || array2 == nil


  return intersection if array1 == [] || array2 == [] || array1 == [] && array2 == []

  i = 0
  j = 0
  while i < array1.length
    while j < array2.length
      if array1[i] == array2[j]
        intersection << array2[j]
        j += 1
      else array1[i] != array2[j]
        j += 1
      end
    end
    j = 0
    i += 1    
  end
  return intersection
end
