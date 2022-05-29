# frozen_string_literal: true

def sort(arr)
  return arr if arr.size < 2

  merge(sort(arr.slice!(0, arr.size / 2)), sort(arr))
end

def merge(left, right)
  merged = []
  while left.first || right.first
    if left.first.nil?
      merged.push(right).flatten!
      right.clear
    elsif right.first.nil?
      merged.push(left).flatten!
      left.clear
    else
      left.first <= right.first ? merged.push(left.shift) : merged.push(right.shift)
    end
  end
  merged
end
