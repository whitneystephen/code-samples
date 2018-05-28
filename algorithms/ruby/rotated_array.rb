module Arrays
  public

  #Find the rotation value of a rotated array.
  #
  def find_rotation_value(arr)
    len = arr.length
    last_index = len - 1
    lo = 0
    hi = last_index

    while lo <= hi do
      mid = (lo + hi) / 2

      return arr[mid] if mid == last_index

      term = arr[mid]
      next_term = arr[mid + 1]

      return next_term if term > next_term

      if term > arr[last_index]
        lo = mid + 1
      else
        hi = mid - 1
      end
    end

    arr[0]
  end

  private

end

if __FILE__ == $0

  include Arrays

  # Find the rotation point in some rotated arrays.
  puts find_rotation_value [1, 2, 3, 4, 5, 6, 7, 8, 9]
  puts find_rotation_value [9, 1, 2, 3, 4, 5, 6, 7, 8]
  puts find_rotation_value [5, 6, 7, 8, 9, 1, 2, 3, 4]
  puts find_rotation_value [5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 1, 1, 2, 2, 3, 3, 4, 4]
  puts find_rotation_value [5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 2, 2, 3, 3, 4, 4]

end