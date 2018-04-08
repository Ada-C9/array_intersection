# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)

  repeated_elements = []
  return repeated_elements if array1 == nil || array2 == nil

  i = 0
  while i < array1.length do

    j = 0
    while j < array2.length do
      if array1[i] == array2[j]
        repeated_elements << array2[j]
      end
      j += 1
    end

    i +=1
  end

  return repeated_elements

end
