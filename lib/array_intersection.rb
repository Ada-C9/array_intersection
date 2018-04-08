# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  return [] if array1.nil? || array2.nil?
  intersection = []
  array1.each do |element|
    array2.each do |item|
      if element == item
        intersection << element
        break
      end
    end
  end
  return intersection
end

=begin
Time complexity O(mn)quadratic polynomial where m is array1.size and n is array2.size
Space complexity = O(n) where n is size of smaller array
=end
