def bubble_sort(arr)
  sorted = false
  unless sorted
    sorted = true
    arr.each_with_index do |item, index|
      next unless arr[index + 1] && item > arr[index + 1]

      arr[index] = arr[index + 1]
      arr[index + 1] = item
      sorted = false
    end
  end
  if sorted == true
    arr
  else
    bubble_sort(arr)
  end
end

# p bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(arr)
  sorted = false
  until sorted
    sorted = true
    arr.each_with_index do |item, index|
      next unless arr[index + 1] && yield(item, arr[index + 1]).positive?

      arr[index] = arr[index + 1]
      arr[index + 1] = item
      sorted = false
    end
  end

  if sorted == true
    arr
  else
    bubble_sort_by(arr)
  end
end

# p bubble_sort_by(['sabaka', 'hi', 'hello', 'hey']) { |left, right| left.length - right.length }
