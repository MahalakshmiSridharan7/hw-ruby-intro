# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #Sum elements of array
  arr.inject(0, :+)
end

def max_2_sum arr
  #Select the maximum 2 values of array and add them
  arr.max(2).reduce(0,:+)
end

def sum_to_n? arr, n
  #Pop each array element and check if the rest of the array contains (target-popped element)
  while num=arr.pop do
    return true if arr.member?(n-num)
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  #check if the string begins with an alphabet but not a vowel
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  #check if string is binary and multiple of 4
  s =~ /(^0|^[10]*00)$/
end

# Part 3

class BookInStock
  
  #getters and setters
  attr_accessor :isbn, :price
  
  #constructor; raise exception for invalid isbn and price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  #format price with $ and 2 decimal places
  def price_as_string
    "$%.2f" % @price
  end
end
