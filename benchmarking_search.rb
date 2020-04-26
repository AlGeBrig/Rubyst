require 'benchmark'
arr = *(1..55600)


def linear_search(array, volume)
  array.each do |element|
    if element == volume
      return element
    elsif element > volume
      break
    end
  end
  return nil
end




def binary_search(array, value)
  lower_bound = 0
  upper_bound = array.length - 1
  while lower_bound <= upper_bound do
midpoint = (upper_bound + lower_bound) / 2
value_at_midpoint = array[midpoint]
if value < value_at_midpoint
  upper_bound = midpoint - 1
elsif value > value_at_midpoint
  lower_bound = midpoint + 1
elsif value == value_at_midpoint
  return midpoint
  end
end
return nil
end


p bench_linear = Benchmark.measure { linear_search(arr, 10000) }
p bench_binary = Benchmark.measure {binary_search(arr, 10000)}
