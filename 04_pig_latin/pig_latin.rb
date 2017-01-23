require 'pry'

def translate(string)
  vowels = ["a", "e", "i", "o", "u"]
  words = string.split(" ")
  result = []
  words.each do |word|
    if vowels.include?(word[0])
      # binding.pry
      word.concat("ay")
      result << word
    else
      c = 0
      while !vowels.include?(word[c])
        if word[c] == "q" && word[c + 1] == "u"
          c += 1
        end
        c += 1
      end
      word = shift(word,c)
      # binding.pry
      word.concat("ay")
      # binding.pry
      result << word
    end
  end
  result = result.join(" ")
  return result
end

def shift(str, n)
  l = str.length - 1
  s = str.slice(n..l)
  to_add = ""
  for i in (0..n-1)
    to_add += str[i]
  end
  s += to_add
  s
end

translate("banana banana")
