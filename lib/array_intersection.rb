# Creates a new array to return the intersection of the two input arrays
require 'pry'

def intersection(array1, array2)
  return [] if array1 == nil || array2 == nil

  index_a = 0
  similar_count = 0

  array1.length.times do
    index_b = 0
    array2.length.times do
      if array1[index_a] == array2[index_b]
        similar_count += 1
      end
      index_b += 1
    end
    index_a += 1
  end

  index_c = 0
  similar_array = Array.new(similar_count)
  similar_index = 0

  array1.length.times do
    index_d = 0
    array2.length.times do
      if array1[index_c] == array2[index_d]
        similar_array[similar_index] = array1[index_c]
        similar_index += 1
      end
      index_d += 1
    end
    index_c += 1
  end

  return similar_array
end


# #Alternately if this restricted array business really doesn't matter
# def intersection(array1, array2)
#   return [] if array1 == nil || array2 == nil
#
#   index_a = 0
#   intersection = []
#
#   array1.length.times do
#     index_b = 0
#     array2.length.times do
#       if array1[index_a] == array2[index_b]
#         intersection << array1[index_a]
#       end
#       index_b += 1
#     end
#     index_a += 1
#   end
#
#   return intersection
# end
