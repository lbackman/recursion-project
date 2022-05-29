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

# Fibonacci with recursion v1: first order recurrence
def fibs_rec1(n, arr = [0, 1])
  arr[n] ? arr[0..n] : fibs_rec1(n, arr << arr[-2] + arr[-1])
end

# Fibonacci with recursion v2: second order recurrence
def fibs_rec2(n, arr = [0, 1])
  arr[n] ? arr[0..n] : arr << fibs_rec2(n - 1, arr).last + fibs_rec2(n - 2, arr).last
end
