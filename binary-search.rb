array = [76, 88, 93, 94,95, 100, 111]

def binary(input, array)
  min = 0
  max = array.length - 1
  middle = array.length / 2

  while min <= max
    if array[middle] == input
      return p "found #{array[middle]}"
    elsif array[middle] < input
      p 'right'
      min = middle + 1
      middle = (min + max)/2
    else
      p 'left'
      max = middle - 1
      middle = (min + max)/2
    end
    p "min #{min}"
    p "max #{max}"
    p "middle #{middle}"
  end
  p 'cant find'
end

binary(89, array)
