require 'benchmark'

def collatz(n)
  sequence = []

  while n > 1
    if sequence.length == 0
      sequence << n
    elsif (n.even?)
       n = n / 2
       sequence << n
    else #(n.odd?) No need since it is an else statement and we checked for even criteria
      n = 3 * n + 1
      sequence << n
    end
  end
  sequence #implicit return
end

# def collatz_comparison(n)
#   longest = 0
#   (1..n).each do |n|
#     if collatz(n).length > collatz(longest).length
#       longest = n
#     end
#   end
#   puts "The longest Collatz sequence from 1 to #{n} is #{longest}."
# end

def collatz_comparison(n)
  longest = 0 #variable outside of block can be shared inside block
  longest_sequence = 0
  1.upto(n) do |n|
    sequence_length = collatz(n).length
    if sequence_length > longest_sequence
      longest = n
      longest_sequence = sequence_length
    end
  end
  puts "The longest Collatz sequence from 1 to #{n} is #{longest}."
end

n = 1000000
Benchmark.bm do |x|
  x.report("collatz_comparison ") { collatz_comparison(n)}

end

p collatz(3)
