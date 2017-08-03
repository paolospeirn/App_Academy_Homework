require "byebug"

def quicksort(arr)
  return arr if arr.length <= 1
  pivot_arr = [arr.first]
  left_side = arr[1..-1].select{ |el| el < arr.first}
  right_side = arr[1..-1].select{ |el| el >= arr.first }
  quicksort(left_side) + pivot_arr + quicksort(right_side)
end

def sum_to(n)
  return nil if n < 1
  return 0 if n == 0
  n + sum_to(n-1)
end

def add_numbers(nums_arr)
  return nil if nums_arr.empty?
  basic = nums_arr.first
  return basic if nums_arr.length == 1
  basic + add_numbers(nums_arr[1..-1])
end

def gamma(n)
  return nil if n < 1
  return 1 if n == 1
  step = n-1

  step * gamma(step)
end

def ice_cream_shop(flavors, favorite)
  return flavors == [favorite] if flavors.empty?
  if flavors.first == favorite
    true
  else
    ice_cream_shop(flavors[1..-1], favorite)
  end
end

def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0..-2])
end
