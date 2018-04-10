# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  results = []

  return results if array1.nil? || array2.nil?

  i = 0

  while i < array1.length
    j = 0
    while j < array2.length
      if array1[i] == array2[j]
        results << array2[j]
        break
      else
        j += 1
      end # conditional
    end # while 1
    i += 1
  end # while 2
  return results
end
