# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)

    intersection = []

    return intersection if array1.nil? || array2.nil?

    index = 0

    until index == array1.length

      array2.each do |num|
        if num == array1[index]
          intersection << num
        end
      end

      index += 1

    end

    return intersection

end
