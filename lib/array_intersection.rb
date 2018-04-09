# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  if array1 == nil || array2 == nil
    return []
  end

  length_1 = array1.length
  length_2 = array2.length

  i = 0
  j = 0
  a = []

  length_1.times do
    length_2.times do
      if array1[i] == array2[j]
        x = array1[i]
        a << x
      end
      j += 1
    end
    j = 0
    i += 1
  end
  return a
end
