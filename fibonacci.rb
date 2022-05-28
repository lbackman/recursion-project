# frozen-string-literal: true

# Fibonacci function without recursion
def fibs(num)
  arr = Array.new(num)
  arr[0] = 0
  arr[1] = 1
  arr.each_index do |i|
    next if i < 2

    arr[i] = arr[i - 1] + arr[i - 2]
  end
  arr
end
