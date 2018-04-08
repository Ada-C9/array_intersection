# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  array_intersections = []
  counter_1 = 0
  counter_2 = 0
  if array1 != nil && array2 != nil
    while array1[counter_1] != nil
      element_1 = array1[counter_1]
      element_1
      counter_2 = 0
      while array2[counter_2] != nil
        element_2 = array2[counter_2]
        element_2
        if element_1 == element_2
          array_intersections << element_1
        end
        counter_2 += 1
      end
      counter_1 += 1
    end
  end
  return array_intersections
end
