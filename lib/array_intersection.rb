def intersection(array1, array2)

  if array1 == nil || array2 == nil
    return []
  end


  i = 0
  intersection_array = []

  while array1[i] != nil || array2[i] != nil
    if array1[i] != nil
      looking_for = array1[i]
      index = 0
      while array2[index] != nil
        if array2[index] == looking_for

          intersection_array << array2[index]
          index +=1
        else
          index += 1
        end
      end
    end

    if array2[i] != nil
      looking_for = array2[i]
      index = 0
      while array1[index] != nil
        if array1[index] == looking_for
          intersection_array << array1[index]

          index += 1
        else
          index += 1
        end
      end
    end

    i += 1
  end

  final = []


  x = 0
  y = 0

  while intersection_array[x] != nil
    if intersection_array[x] == final[y]
      x += 1
      y = 0
    elsif final[y] == nil
      final << intersection_array[x]
      x += 1
      y = 0
    else
      y += 1
    end
  end


  return final
end
