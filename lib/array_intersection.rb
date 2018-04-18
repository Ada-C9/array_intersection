
# Creates a new array to return the intersection of the two input arrays

# array1 = [70, 90, 34, 21, 78, 42]
# array2 = [21, 67, 54, 29, 42, 30]
# expected_intersection = [21, 42]

# First Version
def intersection(array1, array2)
  intersection = []
  if array1 == nil || array2 == nil
    return intersection
  end

  array1.length.times do |i|
    array2.length.times do |j|
      if array1[i] == array2[j]
        intersection << array1[i]
      end
    end
  end
  return intersection
end

# Second Version
def intersection(array1, array2)
  array1 = array1.sort
  array2 = array2.sort
  intersection = []

  i = 0
  while i < array1.length
    match = binary_search(array1[i], array2)
    i += 1
    if match
      intersection << match
    end
  end
  return intersection
end

def binary_search(val, array)
  high = array.length - 1
  low = 0

  while high >= low
    mid = high - low / 2
    guess = array[mid]
    if val > guess
      low = mid + 1
    elsif val < guess
      high = mid - 1
    elsif val == guess
      return guess
    end
  end
end
