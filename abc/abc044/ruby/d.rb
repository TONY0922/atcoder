inputs = readlines.map(&:chomp)

num = inputs[0].to_i
sum = inputs[1].to_i

def func(b, n)
  if n < b
    n
  else
    func(b, (n/b).floor) + (n%b)
  end
end

def func2(b, n)
  if n < b
    n
  else
    func(b, (n/b).floor) + (n%b)
  end
end

for b in 2..num
  if func(b, num) == sum
    @answer = b
    break
  end
end

@answer ||= -1

puts @answer
