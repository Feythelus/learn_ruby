#write your code here

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, t = 2)
  ([str]*t).join(" ")
end

def start_of_word(str, n)
  str[0...n]
end

def first_word(str)
  str.split.first
end

def titleize(str)
  string = str.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  string.first.capitalize!
  string.join(" ")
end
