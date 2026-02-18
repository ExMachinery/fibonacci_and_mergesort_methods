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
  # Same, but using recurcive approach

  array = Array.new
  method = lambda do |n|
    puts 'this was printed recursively'
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
  
end