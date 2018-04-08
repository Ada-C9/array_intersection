# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  # raise NotImplementedError

  expected_intersection = []

  array1.length do |i|
    array2.length do |k|
      if array1[i] == array2[k]
        expected_intersection << array1[i]
      end
    end
    return expected_intersection
  end
end


# start with array1 where index == 0
# iterate through array1 and array2
# loop will take array1[0] compare it to array2 index by index comparison with array2 where index == 0
# if array1[0] does not equal any of array2 indexes
# increase array1 index by 1 (continue to iterate through array1)
# if array[0] equals any of array2 indexes
# shovel that value into new array
# continue comparing iterating through array1 index to array2
# after all of array1 indexes are compared to array2
# return new array (should contain all intersections)
