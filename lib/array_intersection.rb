# Creates a new array to return the intersection of the two input arrays
require 'pry'

def intersection(array1, array2)
  return [] if array1 == nil || array2 == nil

  #find highest possible intersections
  array1.length < array2.length ? highest_similar = array1.length : highest_similar = array2.length

  #make "restricted" array of nils; find array intersections and put them in the restricted array (replacing the nils)
  index_a = 0
  similar_possible = Array.new(highest_similar)
  similar_count = 0

  array1.length.times do
    index_b = 0
    array2.length.times do
      if array1[index_a] == array2[index_b]
        similar_possible[index_a] = array1[index_a]
        similar_count += 1
      end
      index_b += 1
    end
    index_a += 1
  end

  #use helper to reduce array with nils to final array without any nils
  return results(similar_count, similar_possible)
end

def results(similar_count, similar_possible)
  index_c = 0
  index_d = 0
  similar_array = Array.new(similar_count)

  similar_possible.length.times do
    if similar_possible[index_c] != nil
      similar_array[index_d] = similar_possible[index_c]
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
