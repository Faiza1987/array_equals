# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order

def array_equals(array1, array2)
  # Check for nil
  is_nil = true
  if (array1 == nil) && (array2 == nil)
    return is_nil
  end
  if (array1 == nil) && (array2 != nil)
    is_nil = false
    return is_nil
  end
  if (array1 != nil) && (array2 == nil)
    is_nil = false
    return is_nil
  end

  is_same = true
  if array1.length != array2.length
    is_same = false
  else
    for i in (0..array1.length - 1)
      if array1[i] != array2[i]
        is_same = false;
        break
      end
    end
  end
  return is_same
end


array1 = [10, 20, 30, 40, 50, 60]
array2 = [10, 20, 30, 40, 50, 60, 70]

puts array_equals(array1, array2)