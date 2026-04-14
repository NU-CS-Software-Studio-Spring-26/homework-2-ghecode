# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0] 
  end
  return arr.sort.last(2).sum #ret not needed cuz Ruby implicit
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #n i check
  return false if arr.length < 2

  seen = Set.new
  arr.each do |num|
    return true if seen.include?(n - num)
    seen.add(num)
  end

  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.nil? || s.empty?
  !!(s =~ /\A[bcdfghjklmnpqrstvwxyz]/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false unless s.match?(/\A[01]+\z/)
  s.to_i(2) % 4 == 0 #binary mod 4
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn, :price

    def initialize(isbn, price)
      raise ArgumentError, "ISBN can't be empty string" if isbn.empty?
      raise ArgumentError, "Price must be greater than 0" if price <= 0
      @isbn = isbn
      @price = price
    end

    def isbn=(isbn)
      raise ArgumentError, "ISBN can't be empty string" if isbn.empty?
      @isbn = isbn
    end

    def price=(price)
      raise ArgumentError, "Price must be greater than 0" if price <= 0
      @price = price
    end

    def price_as_string
      "$%.2f" % @price
    end
end
