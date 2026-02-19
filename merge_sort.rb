def merge_sort(array)
  # Takes an array and returns a sorted array, using recursive approach
  
  if array.size == 1 || array.empty?
    return array
  else
    a = array[0...(array.size/2)]
    b = array[(array.size/2)..-1]
    sorted1 = merge_sort(a)
    sorted2 = merge_sort(b)
  end

  result = Array.new
  until sorted1.empty? || sorted2.empty?
    if sorted1[0] < sorted2[0]
      result << sorted1[0]
      sorted1.delete_at(0)
    elsif sorted2[0] < sorted1[0]
      result << sorted2[0]
      sorted2.delete_at(0)
    elsif sorted1[0] == sorted2[0]
      result << sorted1[0] << sorted2[0]
      sorted1.delete_at(0)
      sorted2.delete_at(0)
    end
  end
  result = result + sorted1 + sorted2
  result
end
