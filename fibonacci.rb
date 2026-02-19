def fibs(n)
  # Takes n and returns an array n-numbers of Fibonacci sequence
  # Using traditional iteration method
  
  simplest_array = [0, 1]
  return nil if n <= 0
  return simplest_array[n-1] if n <= 2
  until n == 1
    n -= 1
    simplest_array.last(2).each_cons(2) {|a, b| simplest_array << a + b}
  end
  simplest_array
end

def temp_fibs_rec(n)
  # Huh?...

  array = Array.new
  method = lambda do |n|
    puts "this wasn't printed recursively, lol"
    return 0 if n == 1
    return 1 if n == 2
    num = method.call(n-1) + method.call(n-2)
    return num
  end

  until n == 0
    array << method.call(n)
    n -= 1
  end
  array.reverse
end

def fibs_rec(n)
  # Same, but using recurcive approach
  if !n.is_a?(Array)
    array = Array.new(n, nil)
    n = array
  end
   
  if n[0] == nil
    n[0] = 0
  elsif n[1] == nil
    n[1] = 1
  else
    n.each_with_index do |val, ind|
      if val == nil
        n[ind] = n[ind-1] + n[ind-2]
        break
      end
    end
  end 
  fibs_rec(n) if n.include?(nil)
  return n
end

