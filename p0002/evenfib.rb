#!/usr/bin/env ruby
#

def sum_even_fib(n)
  part1,part2,sum,res = 1,1,0,0

  while sum < n
    res = part1 + part2
    part2,part1 = part1,res
    sum += res if res % 2==0
  end
  sum
end

puts sum_even_fib(4000000)
raise "This is wrong" unless sum_even_fib(4000000)==4613732

