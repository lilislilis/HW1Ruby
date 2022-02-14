# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  for num in arr
    total += num
  end
  return total
end

def max_2_sum arr
    size = arr.length()
    if size <= 1
        return sum(arr)
    end
    largest = [arr[0], arr[1]].max
    second = [arr[0], arr[1]].min
    for i in 2...(arr.length)
        num = arr[i]
        if num >= largest
            second = largest
            largest = num
        elsif num > second 
            second = num
        end
    end
    return largest+second
end

def sum_to_n? arr, n
  if arr.length==1
    return false
  end
    (0..arr.length-2).each do |i|
        (i+1..arr.length-1).each do |j|
            if arr[i] + arr[j] == n
                return true
            end
        end
    end
    return false
end 

# # Part 2

def hello(name)
name1 = "Hello, " + name
    return name1
end

def starts_with_consonant?(s)
    consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z','B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z']
      if consonants.include? s[0]
        return true
      end
    return false
end

def binary_multiple_of_4? (s)
  if s == "0"
    return true
  end
  if s.length() <= 2
        return false
  end
    valid_binary = true
    for i in 0...s.length
      l = s[i].chr
        if l != '0' and l != '1'
            valid_binary = false
            break
        end
    end
    # if s[0] == '0'
    #     valid_binary = false
    # end
    if valid_binary and s[-1] == '0' and s[-2] == '0'
        return true
    else
        return false
    end
end

# # Part 3

# class BookInStock
class BookInStock
    
    #Constructor to initialize     
    def initialize(isbn, price)
        raise ArgumentError, "Wrong ISBN number!" if isbn.empty?
        raise ArgumentError, "Wrong book price!" if price <= 0
        @isbn = isbn
        @price = price
    end
    
    #get methods
    def isbn
        @isbn
    end
    
    def price
        @price
    end
        
    #set methods
    def isbn=(isbn)
        @isbn = isbn 
    end
    
    def price=(price)
        @price = price
    end
    
    #price to string
    def price_as_string
        return "$%0.2f" % [@price]
    end
end