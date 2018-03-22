# Thought process
# step 1: create a new empty araay to store results
# step 2: loop array1 to check if the element is in array2 by looping array2
# step 3: if elements equal, push it to the result array
# step 4: return result array
# Time complexity: O(mn)- m is the length of array1, n is the length of array2
# Space complexity: O(m) or O(n) - which ever array has a shorter length

def intersection(array1, array2)
  return [] if array1.nil? || array2.nil? || array1.empty? || array2.empty?

  result = []
  i = 0
  while i < array1.length
    j = 0
    while j < array2.length
      if array1[i] == array2[j]
        result << array1[i]
      end
      j += 1
    end
    i += 1
  end

  return result
end
