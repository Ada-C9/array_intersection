# Creates a new array to return the intersection of the two input arrays
require 'pry'

def intersection(array1, array2)
  intersection = []

    return intersection if array1 == nil || array2 == nil

    return intersection if array1 == [] || array2 == []


  # array1_length = 0
  # array2_length = 0

  # i = 0
  #
  # while array1[i] != nil
  #   array1_length += 1
  #   i += 1
  # end
  #
  # i = 0
  # while array2[i] != nil
  #   array2_length += 1
  #   i += 1
  # end

  i = 0
  k = 0

  until array1[i] == nil
    while array2[k] != nil
      if array1[i] == array2[k]
        intersection << array1[i]
      end
      k += 1
    end
    i += 1
  end

  return intersection
end
