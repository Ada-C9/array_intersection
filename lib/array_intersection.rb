# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  return [] if array1 == [] and array2 == []
  return [] if array1 == [] or array2 == []
  return [] if array1 == nil or array2 == nil

  i = 0
  x = 0
  similar = []

  while array1[i] != nil
    x = 0
    while array2[x] != nil
      if array1[i] == array2[x]
        similar << array1[i]
      end
      x += 1
    end
    i +=1
  end
  return similar
end
