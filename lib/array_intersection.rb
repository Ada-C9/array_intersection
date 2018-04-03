require 'pry'

# Space complexity:  3 variables, regardless of input, plus one output array with maximum length equal to that of the shortest array, so O(n).

# Time complexity:  O(n^2)-- nested loops.

# This is a deeply unsatisfying solution that could be improved with a good sorting algorithm.  Waiting until after the merge-sort class to write that, since that class will precede the due date for this exercise.


## Creates a new array to return the intersection of the two input array

def intersection(array1, array2)
  array1_ind = 0
  array2_ind = 0
  match_array_ind = 0
  match_array = []
  if array1 == nil || array2 == nil || array1 == [] || array2 == []
    return []
  else
    until array1[array1_ind] == nil do
      until array2[array2_ind] == nil do
        if array1[array1_ind] == array2[array2_ind]
          match_array[match_array_ind] = array1[array1_ind]
          match_array_ind += 1
          break
        else
          array2_ind += 1
        end
      end
      array1_ind += 1
      array2_ind = 0
    end
    return match_array
  end
end
