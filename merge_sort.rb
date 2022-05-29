# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.size < 2

  mid = arr.size / 2
  arr_left = merge_sort(arr[0...mid])
  arr_right = merge_sort(arr[mid..-1])
  merge(arr_left, arr_right)
end

def merge(left, right)
  merged = []
  while left.first || right.first
    if left.empty?
      merged.push(right).flatten!
      right.clear
    elsif right.empty?
      merged.push(left).flatten!
      left.clear
    else
      left.first <= right.first ? merged.push(left.shift) : merged.push(right.shift)
    end
  end
  merged
end
