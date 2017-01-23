def add(a, b)
  return a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  result = 0
  if !arr.empty?
    arr.each do |a|
      result += a
    end
  end
  result
end

def multiple(arr)
  result = 1
  if !arr.empty?
    arr.each do |a|
      result = result * a
    end
  end
  result
end

def factorial(a)
  result = 1
  if a == 0
    result
  else
    while a > 0
      result = result * a
      a -= 1
    end
    result
  end

end
