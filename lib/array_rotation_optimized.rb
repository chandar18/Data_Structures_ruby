# Program for array rotation using Juggling algorithm

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

# method to find gcd of 2 numbers
def gcd(a, b)
  if b == 0
    return a
  else
    return gcd(b, a%b)
  end
end

#method to rotate array by d positions
def left_rotate_array_optimized(arr, d, n)
  
  gcd = gcd(d, n) - 1
  
  (0..gcd).each do |i|
    temp = arr[i]
    j = i
    while 1
      k = j + d
      k = k - n if k >=n
      break if k == i
      arr[j] = arr[k]
      j = k
    end
    arr[j] = temp
  end
  return arr
end


# method to print array
def print_array(arr)
  print("Rotated array is: " + arr.join(", ") + "\n")
  return
end

arr = left_rotate_array_optimized(arr, d, n)
print_array(arr)