# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  return [] if array1.nil? || array2.nil?

  if array1.length > array2.length
    longer = array1
    shorter = array2
  else
    longer = array2
    shorter = array1
  end

  intersection = []
  i = 0
  longer.length.times do
    j = 0
    shorter.length.times do
      if longer[i] == shorter[j]
        intersection << shorter[j]
      end
      j += 1
    end
    i += 1
  end
  return intersection

end
