#write your code here
def add (num1,num2)
  num1+num2
end

def subtract (num1,num2)
  num1-num2
end

def sum (array)
  sum = 0
  array.each do |i|
    sum += i
  end
  return sum
end

def multiply (num1,num2)
  num1*num2
end

def power (num1,num2)
  num1**num2
end

def factorial (num1)
  if num1 == 0
    return 0
  else
    i = 1
    factorialed = 1
    until i > num1
      factorialed *= i
      i += 1
    end
    return factorialed
  end
end
