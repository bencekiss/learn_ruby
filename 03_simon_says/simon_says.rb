def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num =2)
  Array.new(num, string).join(' ')
end

def start_of_word(string, num)
  string = string.split(//)
  i = 0
  result = ""
  while i < num
    result += string[i]
    i += 1
  end
  result
end

def first_word(string)
  string = string.split(//)
  result = ""
  string.each do |c|
    if c != " "
      result += c
    else
      return result
    end
  end
  result
end

def titleize(string)
  not_to = ["and", "the", "on", "over", "or", "to"]

  string.capitalize!
  result = string.split(" ")
  result.each do |c|
    if not_to.include?(c)
      c
    else
      c.capitalize!
    end
  end
  l = result.length
  string = ""
  for i in (0..l-2)
    string += result[i] + " "
  end
  string += result[l-1]
  return string
end
