# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  intersect = []

  i = 0
  while i < array1.length
    j = 0
    while j < array2.length
      if array2[j] == array1[i]
        intersect << array1[i]
      end
      j += 1
    end
    i += 1
  end

  return intersect
end
