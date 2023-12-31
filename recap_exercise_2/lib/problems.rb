# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
  (1..num_1*num_2).each do |n|
    return n if n % num_1 == 0 && n % num_2 == 0
  end
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
  counts = Hash.new{0}
  (0...str.length-1).each do |bi|
    bigram = str[bi..bi+1]
    counts[bigram] += 1
  end
  counts.sort_by { |k, v| v }.last[0]
end


# Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
class Hash
  def inverse
    hash = {}
    self.each do |k, v|
      hash[v] = k
    end
    hash
  end
end


# Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
class Array
  def pair_sum_count(num)
    count = 0
    (0...self.length).each do |idx_1|
      (idx_1 + 1...self.length).each do |idx_2|
        count += 1 if self[idx_1] + self[idx_2] == num
      end
    end
    count
  end

  # Write a method, Array#bubble_sort, that takes in an optional proc argument.
  # When given a proc, the method should sort the array according to the proc.
  # When no proc is given, the method should sort the array in increasing order.
  #
  # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
  # two parameters, which represents the two elements in the array being compared.
  # If the block returns 1, it means that the second element passed to the block
  # should go before the first (i.e. switch the elements). If the block returns -1,
  # it means the first element passed to the block should go before the second
  # (i.e. do not switch them). If the block returns 0 it implies that
  # it does not matter which element goes first (i.e. do nothing).
  #
  # This should remind you of the spaceship operator! Convenient :)
  def bubble_sort(&prc)
    prc ||= Proc.new { |i, j| i <=> j }

    sorted = false

    while !sorted
      sorted = true
      (0...self.length - 1).each do |el|
        if prc.call(self[el], self[el + 1]) == 1
          sorted = false
          self[el], self[el + 1] = self[el + 1], self[el]
        end
      end
    end
    self
  end
end
