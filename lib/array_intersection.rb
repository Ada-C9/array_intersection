# Creates a new array to return the intersection of the two input arrays
def remove_duplicates(array)
  duplicates = []

  position = 0
  while position < array.length
    inner = 0

    while inner < array.length
      if position == inner
      elsif array[position] == array[inner]
        duplicate = []
        duplicates << array[position]
        duplicate << array[inner]
        array = array - duplicate
      end

      inner += 1
    end

    position += 1
  end

  array += duplicates
end

def intersection(array1, array2)
  if array1 == nil || array2 == nil
    return []
  end

  max_length = 0
  min_length = 0
  if array1.length > array2.length
    max_length = array1.length
    min_length = array2.length
    max_array = array1
    min_array = array2
  else
    max_length = array2.length
    min_length = array1.length
    max_array = array2
    min_array = array1
  end

  intersection = []

  outer = 0
  while outer < max_length
    inner = 0
    while inner < min_length
      if max_array[outer] == min_array[inner]
        intersection << max_array[outer]
      end
      inner += 1
    end

    outer += 1
  end

  return remove_duplicates(intersection)

end
