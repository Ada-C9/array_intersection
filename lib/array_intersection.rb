require 'pry'
# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  intersect_array = []

  return intersect_array if array1 == nil || array2 == nil

  first_length = array1.length
  second_length = array2.length

  i = 0
  j = 0
  intersect_i = 0

  while i < first_length do

    while j < second_length do
      if array1[i] == array2[j]
        intersect_array[intersect_i] = array1[i]
        intersect_i += 1

      end
      j += 1

    end
    j = 0
    i += 1
  end

  return intersect_array

  raise NotImplementedError
end

# loop through first array, check for matches by looping through everything in second array
array1 = [67, 90, 34, 21, 78, 42]
array2 = [21, 67, 54, 29, 42, 30]
expected_intersection = [21, 42]

puts intersection(array1, array2)
