# Creates a new array to return the intersection of the two input arrays
require 'pry'
def intersection(array1, array2)
  if array1 == nil
    array1 = []
  end
  if array2 == nil
    array2 = []
  end
  counter = 0
  combined_arr = array1 + array2
  combining_hash = {}
  union = []

  while counter < combined_arr.length
    if combining_hash[ combined_arr[counter] ] == nil
      combining_hash[combined_arr[counter]] = 1
    else
      combining_hash[combined_arr[counter]]+=1
      if combining_hash[combined_arr[counter]] > 1
        union << combined_arr[counter]
      end
    end
    counter+=1
  end


  return union
end
