def bubble_sort(arr)
  sorted = false
  if !sorted 
    sorted=true
    arr.each_with_index do |item, index|
      if arr[index+1]
        if item > arr[index + 1]
          arr[index]=arr[index + 1]
          arr[index+1]=item
        end
      end
      sorted = false
    end
  end
  if sorted == true
    arr 
  else 
    bubble_sort(arr)
  end
end

p bubble_sort([4,3,78,2,0,2])