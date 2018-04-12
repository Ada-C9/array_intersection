def intersection(array1, array2)
  index = 0
  union = []

  if array1 == [] || array2 == [] || array1 == nil || array2 == nil
    return union
  end

  if array1.length <= array2.length
    short_array = array1
    long_array = array2
  else
    short_array = array2
    long_array = array1
  end

  short_array.length.times do

    inner_index = 0

    long_array.length.times do

      if long_array[inner_index] == short_array[index]
        union[union.length] = short_array[index]
      end

      inner_index += 1
    end

    index += 1
  end

  return union
end
