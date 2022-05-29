# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.size < 2

  sliced_arr = arr.each_slice((arr.size / 2.0).round).to_a
  arr_left = sliced_arr.first
  arr_right = sliced_arr.last
  merge(merge_sort(arr_left), merge_sort(arr_right))
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
