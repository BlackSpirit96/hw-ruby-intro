# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  num = 0
  arr.each do |number|
    num += number
  end
  return num
end

def max_2_sum arr
  num = 0
  if arr.length > 0
    arr.sort!
    num += arr.pop
    if arr.length > 1
      num += arr.pop
    end
  end
  return num
end

def sum_to_n? arr, n
  i = 0
  arr.each do |x|
    j = 0
    arr.each do |y|
      if (x + y) == n and i != j
        return true
      end
      j += 1
    end
    i += 1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length > 0
    return !(['a', 'e', 'i', 'o', 'u', '#'].include? s[0].downcase)
  else
    return false
  end
end

def binary_multiple_of_4? s
  while s[0] == '0' and s.length > 1 do
    s = s[1,s.length]
  end
  if s.to_i(2).to_s(2) == s
    return s.to_i(2) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    if isbn.length == 0 or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f" % @price
  end
end
