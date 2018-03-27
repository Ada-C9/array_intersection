# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)

    intersection = []

    return intersection if array1.nil? || array2.nil?

    array1.each do |one_num|

      array2.each do |two_num|
        if one_num == two_num
          intersection << one_num
        end
      end

    end

    return intersection

end
