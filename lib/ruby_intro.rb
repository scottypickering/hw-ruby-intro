# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  return arr.max(2).sum 
end

def sum_to_n? arr, n
  for x in 0...arr.length
    for y in (x+1)...arr.length
      if arr[x] + arr[y] === n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return (s =~ /[bcdfghjklmnpqrstvwxyz]/i) === 0
end

def binary_multiple_of_4? s
  if s.length > 0
    for i in 0...s.length
      if s[i] != "0" && s[i] != "1"
        return false
      else
        if s.to_i(2) % 4 === 0
          return true
        else
          return false
        end
      end
    end
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    if isbn === "" || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    return "$#{'%.2f' % @price}"
  end
end
