# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  return [] if array1.nil? || array2.nil?
  return [] if array1.length == 0 || array2.length == 0

  index = 0
  array1.length.times do |i|
    array2.length.times do |j|
      if array1[i] == array2[j]
        index += 1
      end
    end
  end

  inter = Array.new(index)
  index = 0
  array1.length.times do |i|
    array2.length.times do |j|
      if array1[i] == array2[j]
        inter[index] = array1[i]
        index += 1
      end
    end
  end

  return inter
end
