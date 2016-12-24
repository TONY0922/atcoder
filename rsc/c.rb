inputs = readlines.map(&:chomp).map(&:to_i)

num = inputs[0]
a0 = (1..num).to_a
p_ary = inputs[1..-1]
ak_1 = a0.dup

k = 1
while true
  ak = []
  for i in 1..num
    ak[i-1] = ak_1[p_ary[i-1]-1]
  end

  if ak == a0
    break
  end

  ak_1 = ak
  k += 1
end

puts k
