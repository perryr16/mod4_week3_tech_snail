# def snail(array)
#   iterations = (array.length / 2.0).ceil

#   result = []
#   iterations.times do |index|

#     result << array[0]
#     array.delete_at(0)

#     array.each_with_index do |array_element, index|
#       result << array_element[-1]
#       array[index].delete_at(-1)
#     end

#     if array.empty? 
#       return result
#     end
#     result << array[-1].reverse
#     array.delete_at(-1)
    
#     array.reverse.each_with_index do |array_element, index|
#       result << array_element[0]
#       if array.length == 1 && array[0].length == 1
#         array[0].delete_at(0)
#       else
#         array[-(index+1)].delete_at(0)
#       end
#     end
#   end
#   result
# end

def snail(array)
  iterations = (array.length / 2.0).ceil
  result = []
  iterations.times do |index|
    top(array, result)
    right(array, result)
    bottom(array, result)
    left(array, result)
  end
  result
end

def top(array, result)
  result << array[0]
  array.delete_at(0)
end

def right(array, result)
    array.each_with_index do |array_element, index|
    result << array_element[-1]
    array[index].delete_at(-1)
  end
end

def bottom(array, result)
  if array.empty? 
    return result
  end
  result << array[-1].reverse
  array.delete_at(-1)
end

def left(array, result)
    array.reverse.each_with_index do |array_element, index|
    result << array_element[0]
    if array.length == 1 && array[0].length == 1
      array[0].delete_at(0)
    else
      array[-(index+1)].delete_at(0)
    end
  end
end

x1_x_1 = [1]
x2_x_2 = [[1,2],[3,4]]
x3_x_3 = [[1,2,3],
          [4,5,6], 
          [7,8,9]]
x4_x_4 = [[ 1, 2, 3, 4],
          [ 5, 6, 7, 8], 
          [ 9,10,11,12],
          [13,14,15,16]]
x5_x_5 = [[ 1, 2, 3, 4, 5],
          [ 6, 7, 8, 9,10], 
          [11,12,13,14,15],
          [16,17,18,19,20],
          [21,22,23,24,25]]

puts'----1 x 1----'
puts snail(x1_x_1)
puts'----2 x 2 ---'
puts snail(x2_x_2)
puts'----3 x 3----'
puts snail(x3_x_3)
puts'----4 x 4----'
puts snail(x4_x_4)
puts'----5 x 5----'
puts snail(x5_x_5)