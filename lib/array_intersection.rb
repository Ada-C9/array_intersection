# 4/08/18

# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  return [] if array1.nil? || array2.nil? || array1.empty? || array2. empty?

  new_array = []
  i = 0

  while i < array1.length
    j = 0
    while j < array2. length
      if array1[i] == array2[j]
        new_array << array1[i]
      end
      j += 1
    end
    i += 1
  end
  return new_array

end
