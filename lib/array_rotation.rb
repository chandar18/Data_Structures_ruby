# Program for array rotation

# require 'benchmark'

print("1. Enter the size of array:\n")
n = gets.chomp.to_i

puts("2. Enter the space separated elements of array:")
arr = gets.chomp.split(" ").map(&:to_i)

puts("3. Enter the rotation factor:")
d = gets.chomp.to_i

if n != arr.length
  puts("Sorry!!! Size of array is not equal to number of elements in the array")
  return
end

d = d%n

def shift_array(arr, n)
  temp = arr[0]
  last = n - 2
  (0..last).each do |i|
    arr[i] = arr[i+1]
  end
  arr[n-1] = temp
  arr
end

def left_rotate_array(arr, d, n)
  d.times do
    shift_array(arr, n)
  end
  arr
end

def print_array(arr)
  print("Rotated array is: " + arr.join(", ") + "\n")
  return
end

# puts Benchmark.measure {
#   left_rotate_array(arr, d, n)
#   print_array(arr)
# }

arr = left_rotate_array(arr, d, n)
print_array(arr)