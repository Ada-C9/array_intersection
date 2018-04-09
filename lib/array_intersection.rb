def intersection(array1, array2)
  expected_intersection = []
  return expected_intersection if array1 == nil || array2 == nil

  i = 0
  while i < array1.length do
    j = 0
    while j < array2.length do
      if array1[i] == array2[j]
        expected_intersection << array2[j]
      end
      j += 1
    end

    i +=1
  end

  return expected_intersection

end
