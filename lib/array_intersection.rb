# Creates a new array to return the intersection of the two input arrays
# Time complexity is O(nm) because the inner loop executes m times for every nth element
# Space complexity is O(n) if n < m because the max amount of intersections is n elements in the smallest array
def intersection(one, two)
  intersection = []
  i = 0

  return intersection if one == nil || two == nil

  until one[i] == nil
    j = 0

    until two[j] == nil
      if one[i] == two[j]
        intersection << two[j]
      end
      j += 1
    end

    i += 1
  end
  return array3
end
