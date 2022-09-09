# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  answer = 0
  if (arr.empty?) 
    answer
  else
    for i in arr
      answer += i
    end
  end
  answer
end

def max_2_sum(arr)
  # YOUR CODE HERE
  answer = 0
  if (arr.empty?) 
    answer
  elsif (arr.length == 1)
    arr[0]
  else
    answer = arr.max(2)
    answer[0] + answer[1]
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if (arr.length < 2)
    false
  else
    set = Set.new
    for i in arr
      if (set.include?(number - i))
        return true
      end
      set << i
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  a = "Hello, "
  b = name
  a+b
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if ((string[0] =~ /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXY]/) != nil)
    true
  else
    false
  end
end


def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if ((string =~ /[^0-1]/) != nil || string.size == 0 || string[string.size-1] == '1' || string[string.size-2] == '1') 
    false
  else
    true
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError.new(
      "No empty isbn"
    ) if isbn.size == 0 
    raise ArgumentError.new(
      "Expected a value larger than 0"
    ) if price <= 0
    @isbn  = isbn
    @price = price
  end

  def price_as_string
    head = "$"
    s = price.round(2).to_s
    b = ""
    if ((s =~ /[.]/) == nil)
      b = ".00"
    elsif ((s.size - (s =~ /[.]/)) == 2)
      b = "0"
    end
    head + s + b
  end
end