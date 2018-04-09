# Creates a new array to return the intersection of the two input arrays

# Pseudocode:
# option 1: iterate through array1 and for each element, compare to all elements in array2. if match is found shovel that element into intersection array

def intersection(array1, array2)
  intersection = []
  return intersection if (array1.nil? || array2.nil?) || (array1.length == 0 || array2.length == 0)
  array1.each do |i|
    array2.each do |j|
      if i == j
        intersection << i
      end
    end
  end
  intersection
end

# option 2: combine arrays into one array, iterate through combined store each element in a hash with corresponding value of how many times it appears. then call hash.keys (with an argument for returning only those with a value greater than one) to return an array of the intersecting elements
