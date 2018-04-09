# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  return [] if array1 == nil || array2 == nil

  intersect = []
  array1.each do |i|
    array2.each do |j|
      if i == j
        intersect << i
      end
    end
  end
  intersect
end
