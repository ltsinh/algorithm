#iterative giving a range and iterating in that range
#recursive calling element on itself
#0,1,1,2,3,5,8,13.....and so on sequence 0,1 sequence of number sum of previous 2


def iterative_fib(n)
    sequence = []
    (0..n).each do |n|
        if n < 2
            sequence << n
        else
            sequence << sequence[-1] + sequence[-2]
        end
    end
    sequence.last
end

def recursive_fib(n)
  return n if n < 2 #required since start 0+1=1
  return recursive_fib(n - 1) + recursive_fib(n - 2)
end

puts iterative_fib(35)
puts recursive_fib(35)


#Reports time execution of methods
#Directly from FH assignment
require 'benchmark'
n = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(n) }
  x.report("iterative_fib")  { iterative_fib(n)  }
end
