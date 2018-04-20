nums = [9,8,7,6,5,4,3,2,1]
def sort(a)
  count = 0
  while true
    stop = true
    a.each_with_index do |num, index|
      count += 1
      if a[index + 1]
        if a[index] > a[index + 1]
          temp = a[index]
          a[index] = a[index + 1]
          a[index + 1] = temp
          stop = false
        end
      end
      p a
    end
    if stop == true
      break
    end
  end
  puts count
end

sort(nums)
